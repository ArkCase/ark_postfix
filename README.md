Simple postfix for email sending.
# Description:
This image allows you to run POSTFIX internally insdie your docker image for sending email. It is a server side image for sending emails from the applications.

## How to run:

To run the container do the following

## Configuration Options
-----------
* `RELAYHOST`: Host that relays your messages
* `RELAYHOST_USERNAME`: username for the relay server
* `RELAYHOST_PASSWORD`: login password for the relay server
* `SMTP_HEADER_CHECKS`: Set to `1` to enable header checks of to a location of the file for header checks