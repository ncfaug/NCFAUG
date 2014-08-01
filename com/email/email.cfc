<cfcomponent>

	<cffunction name="sendemail" access="remote" returnFormat="JSON" returntype="any">
		<cfargument name="form" required="true" />

		<cfif len(trim('arguments.form.message')) EQ 0>
			<cfset rtnAns.msg = 'Please use a valid email address.'/>
			<cfreturn rtnAns/>
		</cfif>

		<cfif len(trim('arguments.form.email')) EQ 0>
			<cfset rtnAns.msg = 'Please use a valid email address.'/>
			<cfreturn rtnAns/>
		</cfif>

		<cfset vEmail = validemail(arguments.form.email)/>

		<cfif NOT vEmail>
			<cfset rtnAns.msg = 'Please use a valid email address.'/>
			<cfreturn rtnAns/>
		</cfif>

		<cftry>
			<cfmail from="#arguments.form.email#" subject="Website Request For More Information" to="managers@ncfaug.com" type="text/html" >
			<p>#DateFormat(Now(),'dd-mmm-yy')#<br>
			#arguments.form.message#<br>
			Sent From: #arguments.form.name#</p>
			</cfmail>
			<cfset rtnAns = 1/>
			<cfcatch type="any">
				<cfset rtnAns.msg = 'Could not send your email at this time, please try again.'/>
			</cfcatch>
		</cftry>

		<cfreturn rtnAns/>
	</cffunction>

	<cffunction name="validemail" access="remote" returntype="boolean" >
		<cfargument name="email" required="true" />

		<cftry>
			<cfcatch type="any" >
				<cfreturn 0/>
			</cfcatch>
		</cftry>

		<cfreturn 1/>
	</cffunction>

</cfcomponent>