<cfscript>
	if(structKeyExists(FORM,'email')){
		emailObj = createObject('component','com.email.email');
		sendEmail = emailObj.sendemail(form);
	}
</cfscript>

<cfinclude template="/static_include/header.cfm" />
<div class="container">

	<cfinclude template="/static_include/navmenu.cfm" />


	<div class="contact-page main grid-wrap">

		<header class="grid col-full">
			<hr>
			<p class="fleft">Contact</p>
		</header>



		<aside class="grid col-one-quarter mq2-col-one-third mq3-col-full">

			<p class="mbottom">Would you like to know more?</p>

			<address class="mbottom">
				<h5>Nashville ColdFusion Adobe User Group</h5>
				1900 Church Street<br >
				Suite 300<br >
				Nashville,TN 37203<br >
				<a href="http://goo.gl/maps/apP7Z" target="_blank">Get directions</a>
			</address>

			<p class="mbottom">
				615-852-8610<br >
			</p>
			<p class="mbottom">
				<a href="mailto:managers@ncfaug.com?subject=Request For More Information">managers@ncfaug.com</a><br >
				<a href="http://www.meetup.com/Nashville-ColdFusion-User-Group" target="_blank">Meetup</a><br >
				<a href="http://www.twitter.com/ncfaug" target="_blank">Twitter</a><br >
			</p>
			<p>
				<h6>Monthly Meeting: </h6>
				Fourth Thursday Of The Month <br >
				6:30pm - 8:30pm
			</p>

		</aside>

		<section class="grid col-three-quarters mq2-col-two-thirds mq3-col-full">
			<h2>Drop us a message</h2>
			<cfif isDefined('sendEmail.msg')>
				<p class="warning"><cfoutput>#sendEmail.msg#</cfoutput></p>
			</cfif>
			<form id="contact_form" class="contact_form" action="contact.cfm" method="post" name="contact_form">
				<ul>
					<li>
						<label for="name">Your name:</label>
						<input type="text" name="name" id="name" required class="required" >
					</li>
					<li>
						<label for="email">Email:</label>
						<input type="email" name="email" id="email" required placeholder="JohnDoe@gmail.com" class="required email">
					</li>
					<li>
						<label for="message">Message:</label>
						<textarea name="message" id="message" cols="100" rows="6" required  class="required" ></textarea>
					</li>
					<li>
						<button type="submit" id="submit" name="submit" class="button fright">Send it</button>
					</li>
				</ul>
			</form>
		</section>

	</div> <!--main-->

<cfinclude template="/static_include/bottom_nav.cfm" />

</div>

<cfinclude template="/static_include/footer.cfm" />
