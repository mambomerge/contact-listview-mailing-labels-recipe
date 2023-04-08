# contact-listview-mailing-labels-recipe

This recipe will step you through creating a button for Contact List Views to generate a single docx file with Labels per selected record.

## Instructions
1. Install Mambo Merge from the AppExchange by following these instructions: https://www.mambomerge.com/support/installation-from-appexchange/

2. Use the below button to deploy this repo to your Salesforce to create a new Visualforce Page, new Aura App, and new Contact List View Button
<a href="https://githubsfdeploy.herokuapp.com?owner=mambomerge&repo=contact-listview-mailing-labels-recipe&ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

3. Create a docx template that contains the {{cloneForEach:pages}} mergeField anywhere in the document. Create a table. Within each label cell, use a merge field that looks like this {{recordx.FirstName}} where x is a number 1 through 10 (assuming 10 labels per page). 
    Here are the merge fields available with the code:
    * Salutation
    * FirstName
    * LastName
    * Title
    * Account.Name
    * MailingStreet
    * MailingCity
    * MailingState
    * MailingPostalCode
    * MailingCountry


4. Upload your docx Template onto the Files tab by following these instructions: https://www.mambomerge.com/support/how-to-use-mambo-merge-to-generate-a-new-word-docx-file-drag-and-drop-copy/

5. Create a new Mambo Merge Configuration with Id **ContactListMailingLabels** as follows:

  * 5a. Click on the down arrow in the top right corner of Mambo Merge and choose Setup

  * 5b. Create a new Single Record Configuration. 

  * 5c. Add a new Template to the configuration.

  * 5d. Save the Configuration. Don't forget to save Configuration Id as **ContactListMailingLabels**

6. Create a new Custom Button for List Views on the Contact Object that uses the **ContactListViewBatchMamboMerge** page

  * 6a. Go to Buttons, Links, and Actions. 

  * 6b. Click **New Button or Link**.

  * 6c. Select Display Type **List Button** with Display Checkboxes (for Multi-Record Selection). 

  * 6d. Select **Visualforce Page** for Content Source. Content should be set to **ContactListViewMailingLabels** page. 

7. Go to List View Button layout to add the new button.