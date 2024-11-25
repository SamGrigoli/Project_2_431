# Ballerina Install

Follow the instructions below to install the latest Ballerina version using the installer. First go to [Ballerina Downloads](https://ballerina.io/downloads/).

## Table of contents

- [Installation](#installation)

    - [Windows](#windows-install)
    - [Linux](#linux-install)
    - [Mac](#mac-install)
    - [Verify](#verify-installation)

## Installation

### <u> Windows Install</u>

- First download the MSI file and double-click to launch the installer.
- The installer will guide you through the process and install the ballerina distribution in <i>C:\Program Files\Ballerina</i>.

### <u> Linux Install </u>

- Download the DEB file or RPM file and place the file into your home directory in WSL.
- If using DEB, use the following command in your home directory.

        $ sudo dpkg -i ballerina-<VERSION>-swan-lake-linux-x64.deb

- Or if using RPM, use the following command in your home directory.

        $ sudo rpm -i ballerina-<VERSION>-swan-lake-linux-x64.deb

### <u> Mac Install </u>

- Download the pkg file and double-click on it to launch the installer.
- The installer guides you through the process and installs Ballerina distribution in <i>/Library/Ballerina</i>.

### <u> Verify Installation</u>

- After installing Ballerina, run the following test to verify if Ballerina has been successfully installed.

- Execute the command below from the command shell of the operating system.

        $ bal version

- Make certain the command output shows the version that you downloaded as shown below.

        Ballerina <VERSION> (Swan Lake Update <MINOR_VERSION>)
        
        Language specification <SPEC_VERSION>
        
        Update Tool <UPDATE_TOOL_VERSION>