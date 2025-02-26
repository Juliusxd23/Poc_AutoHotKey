# Poc : Power of Uncommon Programming Language AHK

## Description

The goal of this project is to experiment some use case of the language AHK. AHK is the language of AutoHotKey tool (https://www.autohotkey.com/), which is used to automatize some auto click task. Like responds to mail, create custom shortcut or whatever but this language is not very common in enterprise and this can be a good entry point to bypass some AntiVirus (AV) base on signature or basic behavioral process.

Before doing anything I encourage you to read and understand the scripts carefully.
This applies to all tools, it is imperative to check yourself that there is no hidden code before launching a script.

## Features

On this project you got 2 simple example which can lead to CyberThreat. Hackers today love this uncommon language :
- **1_Keylogger.ahk** which is a simple Keylogger. It catch the keypress of your keyboard and write the key in a log file with a timestamp
- **2_SwitchUrlSilent.ahk** is a little more tricky manipulation of the keyboard. Like keylogger, it catch the keypress but manipulate the keypress when a specific string is detected. Here when the user type "google." the script will transform some letter to other. For example, transform "c" to "d", "o" to "e" and "m" to "enter" to switch the url from "google.com" to "google.de"

## Installation and Usage

- Clone this repository or just copy the script you want
- Go to https://www.autohotkey.com/, download and install the tool AutoHotKeyV2.
- Execute it and use it like an IDE, you will can open the file, modify it, run it or compile it to .exe. Or you can execute the script with a double-click on it
- The script will be launch in background and now you can test it :)

## Contribution

You can contribute in following ways :
- Report bugs & add issues
- Fix something and open a pull request
- Give suggestions (Ideas) to make new script

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Disclaimer

Theses scripts are intended for educational and research purposes only. The author and contributors are not responsible for any misuse of theses scripts. Users are advised to use theses scripts responsibly and only on systems for which they have explicit permission. Unauthorized access to systems, networks, or data is illegal and unethical. Always obtain proper authorization before conducting any kind of activities that could impact other users or systems.