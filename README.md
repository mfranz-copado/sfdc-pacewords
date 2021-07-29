# Copado Robotic Testing Salesforce Bootstrap

Copado Robotic Testing is a cloud based solution for automating your software testing. When creating test scripts, your team will utilize [Pacewords](https://help.pace.qentinel.com/pacewords-reference/current/pacewords/all.html) to direct the [Robots](https://help.pace.qentinel.com/docs/current/ui/robots/robots.html) behavior. The out of the box Pacewords are generic which offers great flexility and building Salesforce specific keywords on top of them will streamline your team's experience.

## Bootstrap Goals

* Simplify - Keywords collapsing multiple steps into one keyword allows your scripts to be concise. 
* Documentation - Keyword names are descriptive and increase the readability of your test scripts.
* Maintainability - Change is constant when working with Salesforce and a centralized keyword list allows you to update your SFDC keywords instead of your tests.

## Example Test Case

* Log into Salesforce
* Navigate to Accounts tab
* Find Account on All Accounts tab
* Click on Global Media's record
* Follow the account on Chatter

**Test script with standard Pacewords**

![Screen Shot 2021-07-28 at 4 56 03 PM](https://user-images.githubusercontent.com/82668277/127411016-e18d6def-8379-49a1-8dd4-3b9acaf0c442.png)

**Test script with SFDC Bootstrap Keywords**

![Screen Shot 2021-07-28 at 4 59 31 PM](https://user-images.githubusercontent.com/82668277/127411251-1680ec87-574c-4f5c-a959-a1936a0245f2.png)

## Getting Started
* Create a new file called 'keywords.robot' in your Pace Test Suite
* Copy the contents of the 'keywords.robot' file in this repository into the 'keywords.robot' file in your Pace Test Suite
* Include the 'keywords.robot' file as a reference in your test scripts.

![Screen Shot 2021-07-28 at 5 04 35 PM](https://user-images.githubusercontent.com/82668277/127411602-4abc3e65-ffb8-480c-ae76-3e24c8e63fe0.png)



