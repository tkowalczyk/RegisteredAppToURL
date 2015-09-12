# Registering an Application to a URI Scheme #

This project shows how to properly register specific URL in registry which will run the application from link. ([MSDN](http://msdn.microsoft.com/en-us/library/aa767914(VS.85).aspx))

Solution consist of three projects:

- `WPF` client application which will be started when user click hyperlink from the web;

- web with sample links;

- `WPF` client application installer made with [Inno Setup](http://www.jrsoftware.org/isinfo.php);

## How it works? ##

There are a few links on the web like these:

	<ul>
        <li><a href="sampleApp://run/1234">Run sample app with: 1234 parameter.</a></li>
        <li><a href="sampleApp://run/4321">Run sample app with: 4321 parameter.</a></li>
    </ul>

During the client installation, application installer is making a few registry entries in:

`HKEY_CLASSES_ROOT`

Before client application starts, it's checking if runs through web link or manualy, like this:

	bool runFromWeb = false;
            string parameter = string.Empty;

            for (int i = 0; i != e.Args.Length; ++i)
            {
                if (!string.IsNullOrWhiteSpace(e.Args[i]))
                {
                    runFromWeb = true;
                    parameter = e.Args[0];
                }
            }

Above technic allow us to run applications from a Web with specific parameters.

**More examples**

Feel free to visit my homepage [Tomasz Kowalczyk](http://tomek.kownet.info/ "Tomasz Kowalczyk") to see more complex examples.
