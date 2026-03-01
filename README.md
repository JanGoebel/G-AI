![G-AI Banner Image](pictures/G-AI_banner.png)

# G-AI

## Overview
A LabVIEW MCP Server allowing you to query information from LabVIEW Code. It can read Project-, Library- and Class-Files and look at VI blockdiagrams. This way you can use a Large Language Model to "read" LabVIEW code and give advise on full projects.

## MCP Overview
[MCP](https://modelcontextprotocol.io/docs/getting-started/intro) is a plugin-interface for Large Language Model Chatbots. An MCP Client is a Chat Application (e.g. Claude Desktop). An MCP Server is the Plugin itself providing the chatbot with functions (tools) that it can call during a conversation.

## MCP Example
If I have the MCP Server registered in Claude Desktop I can ask "Analyze this Project and tell me how to optimize it. C:/../test.lvproj". The Model will then propably call "get_project" multiple times to read the project file first and potentially all contained libraries. It will then call "get_vi_details" multiple times to get the description and block diagram screenshot of the most important VIs in the project. With all that information it can then provide guidance on the code.

## Installation
Install the latest vi package from builds/G-AI to include the launcher in your tools menu.

![LabVIEW tools menu after installation of G-AI](pictures/toolsmenu.png)

## MCP Installation
To use this tool you need to install an MCP client. [Claude Desktop](https://claude.com/de-de/download) is the one this project was tested on. It has a free trial, but for extensive projects a paid subscription will be required, since this process will use many tokens.

Different MCP Clients have different ways of installing the servers. But mostly it's a json config file that looks similar to this:

<pre>
  "mcpServers": {
    "G-AI": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "http://127.0.0.1:36987/mcp/server"
      ]
    }
  }
</pre>

In Claude Desktop you can find this file through File -> Settings -> Developer -> Edit Config. See this [article from claude](https://support.claude.com/de/articles/10949351-erste-schritte-mit-lokalen-mcp-servern-auf-claude-desktop) for more details.
There might be multiple servers separated with comma in the "mcpServers" json element.
If you have issues modifying the file correctly, ask a chatbot of your choice for help, they'll know what to do.

Once the file is correctly formatted, you should see the Server in the Claude Desktop Settings -> Developer menu. If the server is running (run main.vi) it should show as "running" in that menu.

## Claude Code
In Claude code in a new chat window hit the "+" icon -> Connectors to see available connectors. G-AI should show up here and be activated.

![connectors menu in claude code](pictures/newchat.png)

When clicking "Manage Connectors" you can enable all tools to not require confirmation. This can also be done on the first time they're being used:

![manage connectors menu in claude code](pictures/manageconnectors.png)

## Prompts
MCP features template-prompts. I'm planning on creating some that will automatically insert the current projects URL in your chat message field in claude code but it's not in place yet. Currently prompts like this will work:

<prev>
  C:\Temp\src\My Project.lvproj
  Analyze this LabVIEW project and tell me how to implement XYZ.
</prev>

## Troubleshooting
To troubleshoot issues related to MCP servers in claude desktop (and other clients) there's usually a log-file tracking all mcp interactions for a specific server.

More infos on MCP debugging [here](https://modelcontextprotocol.io/legacy/tools/debugging).

## Dependencies
This toolkits dependencies are automatically installed with the vi package in the builds folder. Main dependency is the [LabVIEW MCP Server Toolkit](https://github.com/JanGoebel/LabVIEW-MCP-Server-Toolkit).

## Security Warning
This toolkit may share any details of your LabVIEW Project with Claude Desktop, so make sure to only run this on code you own or have permission to share.