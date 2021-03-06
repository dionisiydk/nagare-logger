baselines
baseline110: spec 
	<version: '1.1-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec 
			repository: 'http://ss3.gemstone.com/ss/Nagare'.
		spec
			project: 'MessagePack Core' with: [
				spec
					className: 'ConfigurationOfMessagePack'; loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main' ].
		spec
			project: 'MessagePack Test' with: [
				spec
					className: 'ConfigurationOfMessagePack'; loads: #('Test' );
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main' ].
		spec
			project: 'StOMP Core' with: [
				spec
					className: 'ConfigurationOfStOMP'; loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec 
			package: 'Nagare-Core' with: [ spec requires: 'MessagePack Core' ].
		spec 
			package: 'NagareTest-Core' with: [ spec requires: #('Nagare-Core' 'StOMP Core') ].
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Nagare-Core');
			group: 'Tests' with: #('NagareTest-Core'). ].
	
	spec for: #squeakCommon do: [
		spec 
			package: 'Nagare-Core' with: [ spec includes: #('Nagare-Squeak-Core') ]. 
		spec
			group: 'Core' with: #('Nagare-Squeak-Core')]
	