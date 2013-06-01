<?php

/**
 * IndexController.php is the default controller for users module
 *
 * This module implement acl and auth.
 *
 * @author     Agustín Calderón <agustincl@gmail.com>
 * @copyright  Copyright 2009 White-Project. All Rights Reserved.
 * @license    http://creativecommons.org/licenses/by-nc-nd/3.0/es/  CC-NC-ND
 * @category   White-Project
 * @package    Users
 * @subpackage file
 * @version    SVN $Id: IndexController.php 1145 2010-05-19 23:31:01Z agustincl $
 *
 */

/**
 * Users_IndexController
 *
 * @category   White-Project
 * @uses       Zend_Controller_Action
 * @package    Users
 * @subpackage Controller
 *
 */
class Webservice_IndexController extends Zend_Controller_Action 
{

    /**
     * Initialize controller
     *
     * Set backend layout.
     * Get URI to use in navigation breadcrumb.
     *
     * @return void
     */
	public function init()
    {       
        $this->_helper->layout->setLayout('layout_backend');			// Change layout
        $uri="/".$this->_getParam('module')."/".$this->_getParam('controller')."/".$this->_getParam('action');
        $activeNav = $this->view->navigation()->findByUri($uri);
		$activeNav->active=true;
    }

    /**
     * Index users front.
     *
     * Show the users and insert, update, delete controls.
     *
     * @return      void
     */
    public function indexAction() 
    {
    	$this->view->title = "Webservice index";
        
    }
    
    
    public function serverAction()
    {
    	$this->_helper->viewRenderer->setNoRender(true);
		$this->_helper->layout->disableLayout();    
    	
    	$server = new Zend_Rest_Server();
    	$server->setClass('cosa');
    	$server->handle();
    
    }
  
    public function clientAction()
    {
    	$this->_helper->layout->disableLayout();
    	$this->view->title = "Webservice index";
		
    	$client = new Zend_Rest_Client('http://192.168.20.132:8080/webservice/index/server');
    	$result = $client->sayHello()->get(); 
    	
    	Zend_Debug::dump($result);	
    	
    }
    		
}

class cosa
{
	public function sayHello()
	{
		$model = new Users_Model_Modules();
		$arr = $model->fetchEntries();
	
	
		 
		$xml ='<?xml version="1.0" encoding="UTF-8"?>
					<mysite>
					    <value>ss</value>
					    <code>200</code>
					</mysite>';
	
		$xml = simplexml_load_string($xml);
		//return json_encode($arr);
		
		return $xml;	 
	}
}















