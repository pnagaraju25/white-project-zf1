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
class Webservice_ClientController extends Zend_Rest_Controller 
{

    public function init()
    {
    	$this->_helper->layout->disableLayout();
    	$this->_helper->viewRenderer->setNoRender(true);
    }
    
    public function indexAction()
    {
    }
    
    public function getAction()
    {
    }
    
    public function headAction()
    {
    }
    
    public function postAction()
    {
    }
    
    public function putAction()
    {
    }
    
    public function deleteAction()
    {
    }
    
}
















