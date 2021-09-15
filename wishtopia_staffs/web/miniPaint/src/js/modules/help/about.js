import config from './../../config.js';
import Dialog_class from './../../libs/popup.js';

class Help_about_class {

	constructor() {
		this.POP = new Dialog_class();
	}

	//about
	about() {
		var email = '';	
		
		var settings = {
			title: 'About',
			params: [
				{title: "", html: '<img style="height:64px;" class="about-logo" alt=""  />'},
				{title: "Name:", html: '<span class="about-name">Whiztopia</span>'},
				{title: "Version:", value: VERSION},
				{title: "Description:", value: "Whitebaord."},
				
			],
		};
		this.POP.show(settings);
	}

}

export default Help_about_class;
