baselines
baselinePharo: spec
	spec
		for: #pharo
		do: [ 
			spec
				configuration: 'SPort2'
				with: [ 
					spec
						repository: 'http://www.smalltalkhub.com/mc/Sport/Sport/main';
						versionString: '2.34' ].
			spec
				configuration: 'ZincHTTPComponents'
				with: [ 
					spec
						versionString: #stable;
						repository: 'http://mc.stfx.eu/ZincHTTPComponents';
						loads: #('Core' 'Zodiac' 'WebSocket' 'SSO') ].
			spec
				configuration: 'RFB'
				with: [ 
					spec
						repository: 'http://smalltalkhub.com/mc/PharoExtras/RFB/main';
						version: #stable ].
			spec
				configuration: 'OSProcess'
				with: [ 
					spec
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
						version: #stable ].
			spec package: 'Flow-Pharo-Core' with: [ spec requires: #('OSProcess' 'SPort2' 'RFB' 'Flow-Core-Platform') ].
			spec package: 'Flow-Pharo-Tests' with: [ spec requires: #('Flow-Pharo-Core') ].
			spec
				group: 'default' with: #('Core' 'Flow-Pharo-Core');
				group: 'Tests' with: #('Core' 'Flow-Pharo-Tests');
				group: 'CI' with: #('Tests');
				yourself ]