<?php

class StaffPage extends Page {

    static $db = array (
        'BottomContent' => 'HTMLText',
    );
    
	static $has_many = array (
		'StaffMembers' => 'StaffMember',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
        
        $gridFieldConfig = GridFieldConfig::create()->addComponents(
            new GridFieldToolbarHeader(),
            new GridFieldAddNewButton('toolbar-header-right'),
            new GridFieldSortableHeader(),
            new GridFieldDataColumns(),
            new GridFieldPaginator(10),
            new GridFieldEditButton(),
            new GridFieldDeleteAction(),
            new GridFieldDetailForm(),
            new GridFieldSortableRows('SortOrder')
        );
    
        $gridField = new GridField("StaffMembers", "StaffMembers", $this->StaffMembers(), $gridFieldConfig);
        $fields->addFieldToTab("Root.StaffMembers", $gridField);
		
        // $conf=GridFieldConfig_RelationEditor::create(10);
        //         $conf->addComponent(new GridFieldSortableRows('SortOrder'));
        //         
        //         $fields->addFieldToTab("Root.StaffMembers", GridField::create('StaffMembers','', $this->StaffMembers(), $conf));
        $fields->addFieldToTab("Root.BottomContent", HTMLEditorField::create('BottomContent', _t('Page.BOTTOMCONTENT', 'Bottom Content')));
		return $fields;
	}
	
}

class StaffPage_Controller extends Page_Controller {
	

}