package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentSideMenuProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.DepartmentDetailTabComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.DepartmentSlotItemrenderer;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.InfraUpgradeProgressComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SideMenuDepartmentBook;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class EmergencyDepartmentDetailTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentDetailTabMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "EmergencyDepartmentDetailTabMediator";
      }
      
      private var _component:DepartmentDetailTabComponent;
      
      private var _data:DepartmentDetailViewVo;
      
      private var _sideMenuProxy:DepartmentSideMenuProxy;
      
      private var _mainLayerProxy:MainLayerProxy;
      
      private var _departmentTabProxy:DepartmentTabProxy;
      
      private var _emergencyLayerProxy:EmergencyLayerProxy;
      
      private var _sideMenu:SideMenuDepartmentBook;
      
      private var _professionalDetailMediator:EmergencyDepartmentProfessionalDetailTabMediator;
      
      public function EmergencyDepartmentDetailTabMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(NAME,param1);
         }
      }
      
      public function init(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!this._component)
            {
               if(_loc2_)
               {
                  addr002c:
                  this._component = new DepartmentDetailTabComponent();
                  if(_loc2_)
                  {
                     §§goto(addr003c);
                  }
               }
               §§goto(addr00b5);
            }
            addr003c:
            this.removeListener();
            if(_loc2_ || Boolean(this))
            {
               this.setupSideMenu();
               if(_loc2_ || Boolean(this))
               {
                  this.setLayerData(this._mainLayerProxy.getDepartmentDetailViewVo(param1));
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0099);
                  }
               }
               §§goto(addr00b5);
            }
            addr0099:
            this.container.contentGroup.addElement(this._component);
            if(_loc2_ || Boolean(this))
            {
               addr00b5:
               this.addListener();
            }
            return;
         }
         §§goto(addr002c);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._component);
            if(_loc1_ || Boolean(this))
            {
               §§push(DepartmentSlotItemrenderer.SLOT_CLICKED);
               if(_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handleSlotClick);
                  if(!_loc2_)
                  {
                     §§push(this._component);
                     if(!_loc2_)
                     {
                        §§push(InfraUpgradeProgressComponent.UPGRADE_BUILDING);
                        if(_loc1_ || _loc2_)
                        {
                           §§pop().addEventListener(§§pop(),this.handleUpgrade);
                           §§goto(addr005a);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00d3);
               }
               addr005a:
               if(_loc1_ || Boolean(this))
               {
                  addr0079:
                  §§push(this._component);
                  if(_loc1_ || _loc1_)
                  {
                     addr008a:
                     §§push(InfraUpgradeProgressComponent.OPEN_RC_REBUY);
                     if(_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.openRcRebuyHandler);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr00be);
                        }
                        §§goto(addr00d3);
                     }
                     addr00be:
                     this._component.addEventListener(InfraUpgradeProgressComponent.INSTA_UPGRADE_BUILDING,this.instaUpgradeHandler);
                     §§goto(addr00b8);
                  }
                  addr00b8:
                  if(_loc1_ || _loc2_)
                  {
                     addr00d3:
                     this.container.addEventListener(PaperPopupWindow.BACK,this.resetDetailView);
                  }
                  §§goto(addr00e4);
               }
               addr00e4:
               return;
            }
            §§goto(addr008a);
         }
         §§goto(addr0079);
      }
      
      private function setLayerData(param1:DepartmentDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
            if(_loc2_)
            {
               this._sideMenuProxy.currentType = this._data.type;
               if(!(_loc3_ && _loc3_))
               {
                  addr0045:
                  this._component.data = this._data;
               }
               §§goto(addr004f);
            }
            §§goto(addr0045);
         }
         addr004f:
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(!(_loc1_ && _loc1_))
            {
               addr0028:
               this.prepareProxies();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._sideMenuProxy = facade.retrieveProxy(DepartmentSideMenuProxy.NAME) as DepartmentSideMenuProxy;
            if(_loc2_)
            {
               this._mainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
               if(!_loc1_)
               {
                  addr0061:
                  this._departmentTabProxy = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
                  if(_loc2_)
                  {
                     this._emergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                  }
               }
               §§goto(addr008b);
            }
            §§goto(addr0061);
         }
         addr008b:
      }
      
      private function setupSideMenu() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._sideMenu);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.container);
                     if(!_loc2_)
                     {
                        if(§§pop().sideMenuComponent)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              this._sideMenu = this.container.sideMenuComponent;
                              if(_loc1_ || _loc2_)
                              {
                                 addr00ec:
                                 §§push(this._sideMenu);
                                 if(!_loc2_)
                                 {
                                    addr00f5:
                                    §§push(this._sideMenuProxy);
                                    if(!_loc2_)
                                    {
                                       §§pop().dataProvider = §§pop().entries;
                                       if(!_loc2_)
                                       {
                                          addr0109:
                                          §§push(this._sideMenu);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleSideMenuIndexChange);
                                             addr011a:
                                             if(!_loc2_)
                                             {
                                                addr013f:
                                                this._sideMenu.selectedIndex = this._sideMenuProxy.getIndexByType(this._sideMenuProxy.currentType);
                                                §§goto(addr013b);
                                             }
                                             §§goto(addr015a);
                                          }
                                          addr013b:
                                          addr0137:
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr015a:
                                             this.handleSideMenuIndexChange(null);
                                          }
                                       }
                                       §§goto(addr0161);
                                    }
                                    §§goto(addr013f);
                                 }
                                 §§goto(addr011a);
                              }
                           }
                           else
                           {
                              addr00d4:
                              this.container.sideMenu.addElement(this._sideMenu);
                              addr00d0:
                              if(_loc1_ || _loc2_)
                              {
                                 §§goto(addr00ec);
                              }
                           }
                           §§goto(addr0109);
                        }
                        else
                        {
                           §§push(this.container);
                           if(!_loc2_)
                           {
                              §§pop().sideMenu.removeAllElements();
                              if(!(_loc2_ && _loc1_))
                              {
                                 this._sideMenu = new SideMenuDepartmentBook();
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(this._sideMenu);
                                    if(!_loc2_)
                                    {
                                       §§push(100);
                                       if(!_loc2_)
                                       {
                                          §§pop().percentWidth = §§pop();
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr00be:
                                             §§push(this._sideMenu);
                                             if(!_loc2_)
                                             {
                                                addr00c9:
                                                §§pop().percentHeight = 100;
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr00d0);
                                                }
                                                §§goto(addr0137);
                                             }
                                             §§goto(addr013b);
                                          }
                                          §§goto(addr00ec);
                                       }
                                       §§goto(addr00c9);
                                    }
                                    §§goto(addr00f5);
                                 }
                              }
                              §§goto(addr00d0);
                           }
                        }
                     }
                     §§goto(addr00d4);
                  }
                  addr0161:
                  return;
               }
               §§goto(addr0137);
            }
            §§goto(addr011a);
         }
         §§goto(addr00be);
      }
      
      private function handleSideMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._sideMenu);
            if(_loc3_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0032:
                     §§push(this._sideMenu);
                     if(!_loc2_)
                     {
                        §§goto(addr003b);
                     }
                     §§goto(addr006b);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr0101);
            }
            addr003b:
            §§push(§§pop().selectedItem == null);
            if(_loc3_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0057);
                  }
               }
               §§goto(addr0073);
            }
            addr0057:
            §§pop();
            if(!_loc2_)
            {
               addr0073:
               addr006b:
               if(!this._sideMenu.selectedItem.enable)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0084);
                  }
                  else
                  {
                     addr00e5:
                     §§push(this._sideMenuProxy);
                  }
               }
               else
               {
                  §§push(this._sideMenuProxy);
                  if(!_loc2_)
                  {
                     §§push(§§pop().currentType);
                     if(_loc3_)
                     {
                        if(§§pop() == ServerTagConstants.FIRE_DEPARTMENT)
                        {
                           if(_loc3_)
                           {
                              sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_OPENED);
                              if(!_loc2_)
                              {
                                 addr00c5:
                                 §§push(this._sideMenuProxy);
                                 if(_loc3_)
                                 {
                                    addr00d1:
                                    if(§§pop().currentType != this._sideMenu.selectedItem.type)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00e5);
                                       }
                                    }
                                    §§goto(addr0101);
                                 }
                                 addr00e9:
                                 §§pop().currentType = this._sideMenu.selectedItem.type;
                                 if(!_loc2_)
                                 {
                                    addr00fc:
                                    this.resetDetailView();
                                 }
                              }
                              addr0101:
                              return;
                           }
                           §§goto(addr00fc);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr00d1);
                  }
               }
               §§goto(addr00e9);
            }
            addr0084:
            return;
         }
         §§goto(addr0032);
      }
      
      private function handleSlotClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = false;
         var _loc2_:ProfessionalDepartmentSlotVo = param1.target.data as ProfessionalDepartmentSlotVo;
         if(_loc5_)
         {
            §§push(_loc2_.empty);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(_loc2_.activeAcademy);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§goto(addr0053);
                     }
                     §§goto(addr00ef);
                  }
                  §§goto(addr00af);
               }
               else
               {
                  §§push(_loc2_.canLevelUp);
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        _loc3_ = §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr00ee);
                        }
                        §§goto(addr0119);
                     }
                  }
               }
               §§goto(addr00ef);
            }
            addr0053:
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(this.container);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§pop().dispatchEvent(new Event(Event.CLOSE));
                     if(!(_loc4_ && _loc3_))
                     {
                        sendNotification(ApplicationNotificationConstants.ACADEMY_OPEN);
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           addr00af:
                           StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
                           if(_loc4_ && Boolean(param1))
                           {
                              addr012d:
                              this.container.showBackButton = true;
                              if(_loc5_ || Boolean(param1))
                              {
                                 addr014e:
                                 if(_loc2_.profDepartment == ServerTagConstants.FIRE_DEPARTMENT)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr0169:
                                       sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_LAYER_OPENED);
                                    }
                                 }
                                 §§goto(addr0174);
                              }
                              §§goto(addr0169);
                              addr0129:
                           }
                           §§goto(addr0174);
                        }
                     }
                     else
                     {
                        addr00ef:
                        addr00ee:
                        if(_loc3_)
                        {
                           if(_loc5_)
                           {
                              sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_LEVELUP,_loc2_.professionalId);
                              if(_loc5_)
                              {
                                 addr010e:
                                 this.cleanContainer();
                                 if(!_loc4_)
                                 {
                                    addr0119:
                                    this.initProfessionalDetailView(_loc2_.professionalId);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr0129);
                                    }
                                    §§goto(addr0169);
                                 }
                                 §§goto(addr0129);
                              }
                              §§goto(addr014e);
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr010e);
                     }
                     §§goto(addr0129);
                  }
                  §§goto(addr012d);
               }
            }
            §§goto(addr0174);
         }
         addr0174:
      }
      
      private function initProfessionalDetailView(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._departmentTabProxy.displayedProfessionalVo = this._emergencyLayerProxy.getDepartmentProfessionalDetailVoById(param1);
            if(!_loc2_)
            {
               addr003e:
               §§push(this._professionalDetailMediator);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        this._professionalDetailMediator = new EmergencyDepartmentProfessionalDetailTabMediator(this.container);
                        if(_loc3_)
                        {
                           §§goto(addr0072);
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0085);
            }
            addr0072:
            facade.registerMediator(this._professionalDetailMediator);
            if(!_loc2_)
            {
               addr0085:
               this._professionalDetailMediator.init();
               addr0081:
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function cleanContainer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.container.contentGroup.removeAllElements();
         }
      }
      
      private function handleUpgrade(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && _loc3_))
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_INFRA_UPGRADE,this._data.buildingId);
            }
         }
      }
      
      public function get container() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
      
      private function resetDetailView(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.cleanContainer();
            if(!_loc3_)
            {
               this.container.showBackButton = false;
               if(_loc2_ || Boolean(param1))
               {
                  addr0041:
                  this.resetProfessionalDetailMediator();
                  if(_loc2_ || Boolean(param1))
                  {
                     this.init(this._sideMenuProxy.currentType);
                  }
               }
               return;
            }
         }
         §§goto(addr0041);
      }
      
      private function resetProfessionalDetailMediator() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._professionalDetailMediator = null;
            if(!(_loc2_ && _loc2_))
            {
               addr0027:
               facade.removeMediator(EmergencyDepartmentProfessionalDetailTabMediator.NAME);
            }
            return;
         }
         §§goto(addr0027);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            RandomUtilities.removestackCall(this.resetDetailView);
            if(!_loc2_)
            {
               super.onRemove();
               if(!_loc2_)
               {
                  addr0041:
                  this.removeListener();
               }
               return;
            }
         }
         §§goto(addr0041);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._component);
            if(!(_loc2_ && _loc2_))
            {
               §§push(DepartmentSlotItemrenderer.SLOT_CLICKED);
               if(_loc1_ || _loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleSlotClick);
                  if(!_loc2_)
                  {
                     addr006c:
                     this._component.removeEventListener(InfraUpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgrade);
                     addr0066:
                     addr0062:
                     if(_loc1_)
                     {
                        this.container.removeEventListener(PaperPopupWindow.BACK,this.resetDetailView);
                     }
                  }
                  return;
               }
               §§goto(addr006c);
            }
            §§goto(addr0066);
         }
         §§goto(addr0062);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PROFESSIONALS_DISMISS,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(ApplicationNotificationConstants.PROFESSIONALS_DISMISS);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00a8:
                        §§push(1);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr00c7);
                  }
                  else
                  {
                     §§goto(addr00a4);
                  }
               }
               addr00a4:
               §§goto(addr00a3);
            }
            addr00a3:
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
            {
               §§goto(addr00a8);
            }
            else
            {
               §§push(2);
            }
            addr00c7:
            switch(§§pop())
            {
               case 0:
               case 1:
                  RandomUtilities.addstackCall(this.resetDetailView);
                  if(_loc3_ || Boolean(this))
                  {
                  }
            }
            return;
         }
         §§goto(addr00a8);
      }
      
      private function openRcRebuyHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(_loc3_ || _loc3_)
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function instaUpgradeHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && _loc3_))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(!_loc3_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._data.buildingId);
                  if(_loc2_ || Boolean(param1))
                  {
                     addr006f:
                     this.container.dispatchEvent(new Event(Event.CLOSE));
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr006f);
         }
         addr0080:
      }
   }
}

