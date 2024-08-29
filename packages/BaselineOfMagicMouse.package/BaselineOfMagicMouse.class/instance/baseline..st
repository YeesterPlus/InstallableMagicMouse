baseline
baseline: spec
<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'Cmfcmf' with: [
				spec
					repository: 'github://YeesterPlus/SqueakUtils:master';
					loads: #('winffi')];
			project: 'OSProcess' with: [
				spec
					className: 'ConfigurationOfOSProcess';
					repository: 'https://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository';
					versionString: #'stable'];
			package: 'JSON' with: [spec repository: 'https://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/JSON'];
			package: 'MagicMouse-Core' with: [spec requires: #('Cmfcmf' 'OSProcess' 'JSON')];
			package: 'MagicMouse-Tests' with: [spec requires: #('MagicMouse-Core')].
		spec
			group: 'default' with: #('MagicMouse-Core');
			group: 'tests' with: #('MagicMouse-Tests');
			yourself];    
	yourself
