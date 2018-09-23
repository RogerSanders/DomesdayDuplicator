/************************************************************************

    configurationdialog.cpp

    Capture application for the Domesday Duplicator
    DomesdayDuplicator - LaserDisc RF sampler
    Copyright (C) 2018 Simon Inns

    This file is part of Domesday Duplicator.

    Domesday Duplicator is free software: you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Email: simon.inns@gmail.com

************************************************************************/

#include "configurationdialog.h"
#include "ui_configurationdialog.h"

ConfigurationDialog::ConfigurationDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ConfigurationDialog)
{
    ui->setupUi(this);
}

ConfigurationDialog::~ConfigurationDialog()
{
    delete ui;
}

// Load the configuration settings into the UI widgets
void ConfigurationDialog::loadConfiguration(Configuration *configuration)
{
    // Read the configuration and set up the widgets

    // Capture
    ui->captureDirectoryLineEdit->setText(configuration->getCaptureDirectory());

    if(configuration->getCaptureFormat() == Configuration::CaptureFormat::tenBitPacked) {
        ui->saveAsTenBitRadioButton->setChecked(true);
        ui->saveAsSixteenBitRadioButton->setChecked(false);
    } else {
        ui->saveAsTenBitRadioButton->setChecked(false);
        ui->saveAsSixteenBitRadioButton->setChecked(true);
    }

    // USB
    ui->vendorIdLineEdit->setText(QString::number(configuration->getUsbVid()));
    ui->productIdLineEdit->setText(QString::number(configuration->getUsbPid()));

    // Player Integration

    // Build the serialDeviceComboBox
    ui->serialDeviceComboBox->clear();
    const auto infos = QSerialPortInfo::availablePorts();

    // Add additional "None" option to allow de-selection of COM port
    ui->serialDeviceComboBox->addItem(QString(tr("None")), QString(tr("None")));

    bool configuredSerialDevicePresent = false;
    for (const QSerialPortInfo &info : infos) {
        QStringList list;
        list << info.portName();
        ui->serialDeviceComboBox->addItem(list.first(), list);

        // Is this the currently configured serial device?
        if (info.portName() == configuration->getSerialDevice())
                configuredSerialDevicePresent = true;
    }

    // Select the currently configured device (or default to 'none' if the device is not set)
    if (!configuredSerialDevicePresent) {
        // No device is present in the configuration or the configured device is no longer available - set to none
        ui->serialDeviceComboBox->setCurrentIndex(0);
    } else {
        // Set to the configured device
        ui->serialDeviceComboBox->setCurrentIndex(ui->serialDeviceComboBox->findData(configuration->getSerialDevice()));
    }

    // Build the serialSpeedComboBox
    ui->serialSpeedComboBox->clear();
    ui->serialSpeedComboBox->addItem("9600", Configuration::SerialSpeeds::bps9600);
    ui->serialSpeedComboBox->addItem("4800", Configuration::SerialSpeeds::bps4800);
    ui->serialSpeedComboBox->addItem("2400", Configuration::SerialSpeeds::bps2400);
    ui->serialSpeedComboBox->addItem("1200", Configuration::SerialSpeeds::bps1200);

    // Select the currently configured serial speed
    switch (configuration->getSerialSpeed()) {
        case Configuration::SerialSpeeds::bps9600:
        ui->serialSpeedComboBox->setCurrentIndex(0);
        break;
        case Configuration::SerialSpeeds::bps4800:
        ui->serialSpeedComboBox->setCurrentIndex(1);
        break;
        case Configuration::SerialSpeeds::bps2400:
        ui->serialSpeedComboBox->setCurrentIndex(2);
        break;
        case Configuration::SerialSpeeds::bps1200:
        ui->serialSpeedComboBox->setCurrentIndex(3);
        break;
    }

    // Build the playerModelComboBox
    ui->playerModelComboBox->clear();
    ui->playerModelComboBox->addItem("None", Configuration::PlayerModels::none);
    ui->playerModelComboBox->addItem("Pioneer LD-V4300D", Configuration::PlayerModels::pioneerLDV4300D);
    ui->playerModelComboBox->addItem("Pioneer CLD-V2800", Configuration::PlayerModels::pioneerCLDV2800);

    // Select the currently configured player
    switch(configuration->getPlayerModel()) {
        case Configuration::PlayerModels::none:
        ui->playerModelComboBox->setCurrentIndex(0);
        break;
        case Configuration::PlayerModels::pioneerLDV4300D:
        ui->playerModelComboBox->setCurrentIndex(1);
        break;
        case Configuration::PlayerModels::pioneerCLDV2800:
        ui->playerModelComboBox->setCurrentIndex(2);
        break;
    }
}

// Save the configuration settings from the UI widgets
void ConfigurationDialog::saveConfiguration(Configuration *configuration)
{
    qDebug() << "ConfigurationDialog::saveConfiguration(): Saving configuration";

    // Capture
    configuration->setCaptureDirectory(ui->captureDirectoryLineEdit->text());

    if (ui->saveAsTenBitRadioButton->isChecked()) configuration->setCaptureFormat(Configuration::CaptureFormat::tenBitPacked);
    else configuration->setCaptureFormat(Configuration::CaptureFormat::sixteenBitSigned);

    // USB
    configuration->setUsbVid(static_cast<quint16>(ui->vendorIdLineEdit->text().toInt()));
    configuration->setUsbPid(static_cast<quint16>(ui->productIdLineEdit->text().toInt()));

    // Player integration - serial device
    configuration->setSerialDevice(ui->serialDeviceComboBox->currentText());

    // Player integration - Serial speed
    switch (ui->serialSpeedComboBox->currentIndex()) {
        case 0: configuration->setSerialSpeed(Configuration::SerialSpeeds::bps9600);
        break;
        case 1: configuration->setSerialSpeed(Configuration::SerialSpeeds::bps4800);
        break;
        case 2: configuration->setSerialSpeed(Configuration::SerialSpeeds::bps2400);
        break;
        case 3: configuration->setSerialSpeed(Configuration::SerialSpeeds::bps1200);
        break;
    }

    // Player integration - player model
    switch (ui->playerModelComboBox->currentIndex()) {
        case 0: configuration->setPlayerModel(Configuration::PlayerModels::none);
        break;
        case 1: configuration->setPlayerModel(Configuration::PlayerModels::pioneerLDV4300D);
        break;
        case 2: configuration->setPlayerModel(Configuration::PlayerModels::pioneerCLDV2800);
        break;
    }

    // Save the configuration to disk
    configuration->writeConfiguration();
}

// Browse for capture directory button clicked
void ConfigurationDialog::on_captureDirectoryPushButton_clicked()
{
    QString captureDirectoryPath;

    captureDirectoryPath = QFileDialog::getExistingDirectory(this, tr("Select capture directory"), ui->captureDirectoryLineEdit->text());

    if (captureDirectoryPath.isEmpty()) {
        qDebug() << "ConfigurationDialog::on_captureDirectoryPushButton_clicked(): QFileDialog::getExistingDirectory returned empty directory path";
    } else {
        ui->captureDirectoryLineEdit->setText(captureDirectoryPath);
    }
}

// Save configuration clicked
void ConfigurationDialog::on_buttonBox_accepted()
{
    qDebug() << "ConfigurationDialog::on_buttonBox_accepted(): Configuration changed";

    // Emit a configuration changed signal
    emit configurationChanged();
}

// Cancel configuration clicked
void ConfigurationDialog::on_buttonBox_rejected()
{
    qDebug() << "ConfigurationDialog::on_buttonBox_rejected(): Ignoring configuration changes";
}

// Any button clicked
void ConfigurationDialog::on_buttonBox_clicked(QAbstractButton *button)
{
    // Check for restore defaults button
    if (button == ui->buttonBox->button(QDialogButtonBox::RestoreDefaults)) {
        qDebug() << "ConfigurationDialog::on_buttonBox_clicked(): Restore defaults clicked";

        // Set default values for dialog
        ui->captureDirectoryLineEdit->setText(QDir::homePath());
        ui->saveAsTenBitRadioButton->setChecked(true);
        ui->saveAsSixteenBitRadioButton->setChecked(false);

        ui->vendorIdLineEdit->setText(QString::number(7504));
        ui->productIdLineEdit->setText(QString::number(24635));

        ui->serialDeviceComboBox->setCurrentIndex(0);
        ui->serialSpeedComboBox->setCurrentIndex(0);
        ui->playerModelComboBox->setCurrentIndex(0);
    }
}