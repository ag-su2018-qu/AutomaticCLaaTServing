# Automatic CLAAT serving.

**The shell script assumes that the Auth code provided has access to the given Docs.**

The run.sh can be executed by using the following command\
	`./run.sh <FileName>` \
Where `<FileName>` is the file path for a file containing the Google Doc ID's for the documents for which you need to generate CLAAT pages.

## Prerequisites:
*Before running the shell script you need to either have authorized CLAAT using your google account or you can set an Environment Variable "CLAAT_AUTH_CODE" with an authentication code.*

Below are the steps to generate an auth code for a google account.\	
*TODO*


## How to use the Script
1. Do either of the below: 
  1. Download the CLaaT binary from [here](https://github.com/googlecodelabs/tools/releases/tag/v1.0.4). Rename the binary as "claat" for ease of use.
  1. Add the path to this binary to the `PATH` environment variable using the command below.\

   `export PATH=$PATH:<Path to claat binary>` \

				**OR**\

  1. Run the following command in your home directory \

   `sudo sh <RepoLocatio>/pre_execution/run.sh` \

1. Download the oauth2l library. Use (this)[https://github.com/google/oauth2l] as resference.
1. Create a Google service account if you don't have one. Use (this)[https://support.google.com/a/answer/7378726?hl=en] as a reference. This will download a JSON file with keys(hold on to this as we will use this to generate our token).
1. Make sure to share all docs in the File being passed to the script with this account with read only access.
1. Generate the auth code using the below command.\

	`oauth2l fetch --json <Path to json> drive` \

1. Copy the generated code and add it to your environment using \

	`export CLAAT_AUTH_CODE=<Copied Code>` \

1. Now you can run the provided script using \

	`./run.sh <FileName>` \

1. Claat server should now run on port 9090 with all you docs listed.


	

