# Telegram Bot

This is a simple Telegram bot that performs basic commands.

## Bot Link

[Telegram Bot](https://t.me/teleBot9784_bot)

## Installation Instructions

1. Install Go, if it is not already installed. Instructions can be found [here](https://golang.org/doc/install).


2. Clone this repository:
    ```sh
    git clone https://github.com/roman-98/telebot.git
    cd telebot
    ```

3. Export your Telegram bot token:
    ```sh
    export TELE_TOKEN='your_telegram_bot_token'
    ```

3. **Build and run the Docker container:**

    Make sure Docker is installed and running on your machine. Then, execute the following commands:

    ```sh
    # Build the Docker image
    sudo docker build .

    # Run the Docker container
    sudo docker run -e TELE_TOKEN='your-bot-token' IMAGE_ID ./telebot start
    ```

4. **Verify the container is running:**

    ```sh
    sudo docker ps
    ```

    You should see your `telebot` container in the list of running containers.


## Usage Commands

- `/start` - returns a message to the logs.
- `/start hello` - receive the message "Hello I'm Kbot v1.0.2!".


