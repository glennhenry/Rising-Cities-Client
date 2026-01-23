package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySideRewardMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySlotMediator;
   import net.bigpoint.cityrama.view.emergencyBook.SpecialistDetailGridMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencySlotComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideRewardComponent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowEmergencySlotCommand extends SimpleCommand
   {
      
      public function ShowEmergencySlotCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:EmergencySlotMediator = facade.retrieveMediator(EmergencySlotMediator.NAME) as EmergencySlotMediator;
         if(_loc4_)
         {
            if(!_loc11_)
            {
               facade.removeMediator(EmergencySlotMediator.NAME);
            }
         }
         var _loc5_:SpecialistDetailGridMediator = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
         if(_loc5_)
         {
            if(!_loc11_)
            {
               facade.removeMediator(SpecialistDetailGridMediator.NAME);
               if(_loc10_ || Boolean(param1))
               {
                  addr009d:
                  _loc3_.removeTemporaryProfessionals(_loc2_.billboardObjectVo);
               }
               var _loc6_:EmergencyAssignVo = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
               var _loc7_:EmergencySlotComponent = new EmergencySlotComponent();
               _loc7_.percentWidth = 100;
               if(!(_loc11_ && Boolean(_loc3_)))
               {
                  _loc7_.percentHeight = 100;
                  if(_loc10_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,_loc7_);
                     if(_loc10_)
                     {
                        addr00ef:
                        _loc2_.component.startButtonMode();
                        if(_loc10_)
                        {
                           addr00fd:
                           _loc2_.startEnabledCheck();
                        }
                        addr0102:
                        _loc4_ = new EmergencySlotMediator(_loc7_);
                        if(!_loc11_)
                        {
                           _loc7_.data = _loc6_;
                           if(_loc10_)
                           {
                              facade.registerMediator(_loc4_);
                              if(!(_loc11_ && Boolean(this)))
                              {
                                 addr0138:
                                 §§push(_loc2_.component);
                                 if(!(_loc11_ && Boolean(_loc3_)))
                                 {
                                    §§pop().buildingImage.visible = false;
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       addr016a:
                                       §§push(_loc2_.component);
                                       if(_loc10_ || Boolean(_loc3_))
                                       {
                                          addr017b:
                                          §§pop().showBackButton = false;
                                          if(_loc10_ || Boolean(this))
                                          {
                                             §§push(_loc2_.component);
                                             if(!(_loc11_ && Boolean(param1)))
                                             {
                                                §§push(§§pop().emergencyImageTop);
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc6_.renderLib);
                                                   if(!(_loc11_ && Boolean(_loc2_)))
                                                   {
                                                      §§pop().dynaLibName = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc2_.component);
                                                         if(!_loc11_)
                                                         {
                                                            addr01cc:
                                                            §§push(§§pop().emergencyImageTop);
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc6_.renderLib);
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr01e1);
                                                               }
                                                               §§goto(addr0209);
                                                            }
                                                            §§goto(addr0203);
                                                         }
                                                         §§goto(addr0200);
                                                      }
                                                      §§goto(addr01fd);
                                                   }
                                                   addr01e1:
                                                   §§pop().dynaSWFFileName = §§pop().split("_").shift();
                                                   if(!(_loc11_ && Boolean(_loc2_)))
                                                   {
                                                      addr0209:
                                                      _loc2_.component.emergencyImageTop.dynaBmpSourceName = _loc6_.renderImg;
                                                      addr0203:
                                                      addr0200:
                                                      addr01fd:
                                                   }
                                                   var _loc8_:SideRewardComponent = new SideRewardComponent();
                                                   _loc8_.percentWidth = 100;
                                                   if(!_loc11_)
                                                   {
                                                      _loc8_.percentHeight = 100;
                                                      if(_loc10_ || Boolean(this))
                                                      {
                                                         _loc8_.data = _loc6_;
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,_loc8_);
                                                            if(_loc10_ || Boolean(this))
                                                            {
                                                               addr0274:
                                                               facade.removeMediator(EmergencySideRewardMediator.NAME);
                                                            }
                                                         }
                                                         §§goto(addr027f);
                                                      }
                                                      §§goto(addr0274);
                                                   }
                                                   addr027f:
                                                   var _loc9_:EmergencySideRewardMediator = new EmergencySideRewardMediator(_loc8_);
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      facade.registerMediator(_loc9_);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr0203);
                                             }
                                             §§goto(addr0200);
                                          }
                                          §§goto(addr01fd);
                                       }
                                       §§goto(addr01cc);
                                    }
                                    §§goto(addr01fd);
                                 }
                                 §§goto(addr017b);
                              }
                              §§goto(addr01fd);
                           }
                           §§goto(addr016a);
                        }
                        §§goto(addr0138);
                     }
                     §§goto(addr00fd);
                  }
                  §§goto(addr0102);
               }
               §§goto(addr00ef);
            }
         }
         §§goto(addr009d);
      }
   }
}

