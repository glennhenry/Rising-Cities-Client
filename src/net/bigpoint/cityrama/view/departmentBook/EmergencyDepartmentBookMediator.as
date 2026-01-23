package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentSideMenuProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class EmergencyDepartmentBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentBookMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "EmergencyDepartmentBookMediator";
      }
      
      private var _departmentTabProxy:DepartmentTabProxy;
      
      private var _departmentSideMenuProxy:DepartmentSideMenuProxy;
      
      public function EmergencyDepartmentBookMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(NAME,param2);
            if(_loc4_ || Boolean(param1))
            {
               this.prepareProxies();
               if(!_loc3_)
               {
                  addr0045:
                  this.setupListener();
               }
               return;
            }
         }
         §§goto(addr0045);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.onRegister();
            if(!(_loc2_ && _loc2_))
            {
               addr0039:
               sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_EDUCATIONPOINTS);
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._departmentTabProxy = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
            if(!(_loc1_ && Boolean(this)))
            {
               addr0047:
               this._departmentSideMenuProxy = facade.retrieveProxy(DepartmentSideMenuProxy.NAME) as DepartmentSideMenuProxy;
            }
            return;
         }
         §§goto(addr0047);
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr004b:
                  this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                  addr0048:
               }
               return;
            }
            §§goto(addr004b);
         }
         §§goto(addr0048);
      }
      
      private function setTabs() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.component.departmentBookTabData = this._departmentTabProxy.tabs;
         }
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1)
            {
               if(_loc3_)
               {
                  if(param1.newIndex != param1.oldIndex)
                  {
                     if(_loc3_)
                     {
                        addr0034:
                        this._departmentTabProxy.selectedIndex = param1.newIndex;
                        if(_loc3_)
                        {
                           §§goto(addr004f);
                        }
                        §§goto(addr0086);
                     }
                  }
                  §§goto(addr004f);
               }
               §§goto(addr0034);
            }
         }
         addr004f:
         §§push(this.component);
         if(_loc3_)
         {
            §§push(true);
            if(_loc3_)
            {
               §§pop().showBackButton = §§pop();
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§goto(addr007e);
               }
               §§goto(addr0086);
            }
            addr007e:
            this.component.showBackButton = false;
            §§goto(addr007d);
         }
         addr007d:
         if(_loc3_)
         {
            addr0086:
            this.cleanContainer();
            if(!_loc2_)
            {
               facade.sendNotification(ApplicationNotificationConstants.DEPARTMENTBOOK_TAB_CHANGE,{
                  "container":this.component,
                  "cat":this._departmentSideMenuProxy.currentType
               });
            }
         }
      }
      
      private function cleanContainer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.component);
            if(!_loc1_)
            {
               if(§§pop().contentGroup)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0047:
                     this.component.contentGroup.removeAllElements();
                     addr0044:
                  }
               }
               return;
            }
            §§goto(addr0047);
         }
         §§goto(addr0044);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.onRemove();
            if(_loc1_ || Boolean(this))
            {
               this.removeListener();
               if(_loc1_)
               {
                  addr0044:
                  this._departmentTabProxy.selectedIndex = -1;
                  if(_loc1_ || _loc2_)
                  {
                     addr0064:
                     facade.removeMediator(EmergencyDepartmentDetailTabMediator.NAME);
                     if(!_loc2_)
                     {
                        addr0074:
                        facade.removeMediator(EmergencyDepartmentProfessionalDetailTabMediator.NAME);
                        if(_loc1_ || _loc1_)
                        {
                           sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_CLOSED);
                        }
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0074);
               }
               addr0097:
               return;
            }
            §§goto(addr0064);
         }
         §§goto(addr0044);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_)
               {
                  addr004c:
                  this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                  addr0049:
               }
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr0049);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.setTabs();
            if(_loc3_)
            {
               if(param1.index)
               {
                  if(!_loc2_)
                  {
                     addr0032:
                     §§push(this._departmentTabProxy);
                     if(_loc3_)
                     {
                        §§pop().selectedIndex = param1.index as int;
                        if(_loc3_)
                        {
                           §§goto(addr006a);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr00e9);
               }
               else
               {
                  §§push(this._departmentTabProxy);
                  if(!_loc2_)
                  {
                     §§pop().selectedIndex = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr006a:
                        §§push(this._departmentTabProxy);
                        if(_loc3_)
                        {
                           addr0080:
                           §§push(§§pop().selectedIndex);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(DepartmentTabProxy.DEPARTMENT_INDEX);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr00ac:
                                       if(param1.cat)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             this._departmentSideMenuProxy.currentType = param1.cat;
                                             if(!_loc2_)
                                             {
                                                addr00df:
                                                this.handleTabIndexChanged();
                                                if(_loc3_)
                                                {
                                                   §§goto(addr00e9);
                                                }
                                                §§goto(addr00ff);
                                             }
                                          }
                                          addr00e9:
                                          §§goto(addr00f6);
                                       }
                                    }
                                 }
                                 §§goto(addr00df);
                              }
                              addr00f6:
                              §§goto(addr00f0);
                           }
                           addr00f0:
                           §§goto(addr00ed);
                        }
                        addr00ed:
                        if(this._departmentTabProxy.selectedIndex != DepartmentTabProxy.DEPARTMENT_INDEX)
                        {
                           if(!_loc2_)
                           {
                              addr00ff:
                              this.component.tabBar.addEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
                           }
                        }
                        return;
                     }
                     §§goto(addr00ff);
                  }
               }
               §§goto(addr0080);
            }
            §§goto(addr00ac);
         }
         §§goto(addr0032);
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc3_ || _loc3_)
            {
               §§pop().tabBar.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
               if(_loc3_ || Boolean(this))
               {
                  addr0054:
                  this.component.tabBar.selectedIndex = this._departmentTabProxy.selectedIndex;
               }
               §§goto(addr0061);
            }
            §§goto(addr0054);
         }
         addr0061:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.DEACTIVATE_EMERGENCY_FEATURE];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(_loc2_))
         {
            if(ApplicationNotificationConstants.DEACTIVATE_EMERGENCY_FEATURE === _loc2_)
            {
               addr005f:
               §§push(0);
               if(_loc4_ && Boolean(_loc2_))
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.deactivateDepartmentTab();
                  if(_loc3_)
                  {
                  }
            }
            return;
         }
         §§goto(addr005f);
      }
      
      private function deactivateDepartmentTab() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:TabsVo = null;
         var _loc4_:TabsVo = null;
         var _loc1_:ArrayCollection = this._departmentTabProxy.tabs;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in _loc1_.source)
         {
            _loc3_ = new TabsVo();
            if(_loc8_)
            {
               _loc3_.hasNews = _loc4_.hasNews;
               if(_loc8_)
               {
                  _loc3_.styleName = _loc4_.styleName;
                  if(_loc7_ && Boolean(this))
                  {
                     continue;
                  }
                  _loc3_.tooltip = _loc4_.tooltip;
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     _loc3_.tabLabel = _loc4_.tabLabel;
                     if(_loc8_)
                     {
                        _loc3_.isLocked = _loc4_.isLocked;
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           addr00cd:
                           if(_loc4_.styleName == DepartmentTabProxy.STYLE_TAB_DEPARTMENT)
                           {
                              if(_loc7_ && Boolean(_loc1_))
                              {
                                 continue;
                              }
                              addr00f5:
                              _loc3_.isLocked = true;
                              if(_loc7_ && Boolean(_loc1_))
                              {
                                 continue;
                              }
                           }
                           addr0108:
                           _loc2_.addItem(_loc3_);
                           continue;
                        }
                     }
                     §§goto(addr00f5);
                  }
               }
               §§goto(addr0108);
            }
            §§goto(addr00cd);
         }
         if(_loc8_)
         {
            this.component.departmentBookTabData = _loc2_;
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function get component() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
   }
}

