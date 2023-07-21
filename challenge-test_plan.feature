Feature: Login

	This is a simulation of a test suite in BDD format.
	Usernames must match this regular expression: ^[a-zA-Z][a-zA-Z0-9]{2,9}$
	Passwords must match this regular expression: ^\d.{4,9}$

	Scenario Outline: Valid Credentials
		Given the login page is open
		When the user logs in with <username> and <password>
		And the user clicks the "Entrar" button
		Then the main page is shown

		Examples:
			|username	|password	|
			|jjZ		|8OV/2		|
			|Mjcgm2npqY	|2N4C* /ct+	|
	
	Scenario Outline: Invalid Credentials
		Given the login page is open
		When the user logs in with <username> and <password>
		Then the <error> message appears

		Examples:
			|username	|password	|error			|
			|jZ		|8OV/2		|Campo Login inválido!	|
			|3jZ		|8OV/2		|Campo Login inválido!	|
			|Mjcgm2npq*	|2N4C* /ct+	|Campo Login inválido!	|
			|Mjcgm2npqYk	|2N4C* /ct+	|Campo Login inválido!	|
			|jjZ		|OV/2		|Campo Senha inválido!	|
			|jjZ		|aOV/2		|Campo Senha inválido!	|
			|Mjcgm2npqY	|2N4C* /ct+$	|Campo Senha inválido!	|
