package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyCoverageMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySidePictureMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.CoverageInfoComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideEmergencyPictureComponent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowCoverageInLayerCommand extends SimpleCommand
   {
      
      public function ShowCoverageInLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:EmergencyCoverageMediator = facade.retrieveMediator(EmergencyCoverageMediator.NAME) as EmergencyCoverageMediator;
         if(_loc4_)
         {
            if(_loc9_ || Boolean(_loc3_))
            {
               facade.removeMediator(EmergencyCoverageMediator.NAME);
               if(_loc9_ || Boolean(_loc3_))
               {
                  addr007a:
                  _loc3_.removeTemporaryProfessionals(_loc2_.billboardObjectVo);
               }
               var _loc5_:EmergencyZoneLayerVo = _loc3_.getEmergencyZoneLayerVo(_loc2_.billboardObjectVo);
               var _loc6_:CoverageInfoComponent = new CoverageInfoComponent();
               _loc6_.percentWidth = 100;
               if(_loc9_ || Boolean(_loc2_))
               {
                  _loc6_.percentHeight = 100;
                  if(_loc9_)
                  {
                     _loc6_.data = _loc5_;
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        §§push(_loc2_.component);
                        if(!_loc10_)
                        {
                           §§pop().nextButtonMode();
                           if(!_loc10_)
                           {
                              addr00e2:
                              §§push(_loc2_.component);
                              if(_loc9_ || Boolean(param1))
                              {
                                 §§pop().nextEnabled();
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,_loc6_);
                                    if(_loc9_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc2_.component);
                                       if(_loc9_ || Boolean(_loc2_))
                                       {
                                          addr0141:
                                          §§pop().buildingImage.visible = true;
                                          if(!_loc10_)
                                          {
                                             addr014d:
                                             §§push(_loc2_.component);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop().emergencyImageTop);
                                                if(_loc9_)
                                                {
                                                   §§push("gui_popups_emergencyBook");
                                                   if(!_loc10_)
                                                   {
                                                      §§pop().dynaLibName = §§pop();
                                                      if(_loc9_ || Boolean(_loc2_))
                                                      {
                                                         addr0178:
                                                         §§push(_loc2_.component);
                                                         if(_loc9_)
                                                         {
                                                            addr0181:
                                                            §§push(§§pop().emergencyImageTop);
                                                            if(_loc9_ || Boolean(_loc2_))
                                                            {
                                                               §§push("gui_popups_emergencyBook");
                                                               if(_loc9_ || Boolean(_loc2_))
                                                               {
                                                                  addr01a3:
                                                                  §§pop().dynaSWFFileName = §§pop();
                                                                  if(!(_loc10_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr01be:
                                                                     _loc2_.component.emergencyImageTop.dynaBmpSourceName = "pic_radius";
                                                                     addr01ba:
                                                                     addr01b7:
                                                                     addr01b4:
                                                                  }
                                                                  addr01c0:
                                                                  _loc4_ = new EmergencyCoverageMediator(_loc6_);
                                                                  if(!(_loc10_ && Boolean(_loc2_)))
                                                                  {
                                                                     facade.registerMediator(_loc4_);
                                                                  }
                                                                  var _loc7_:SideEmergencyPictureComponent = new SideEmergencyPictureComponent();
                                                                  _loc7_.percentWidth = 100;
                                                                  if(!_loc10_)
                                                                  {
                                                                     _loc7_.percentHeight = 100;
                                                                     if(_loc9_)
                                                                     {
                                                                        addr0207:
                                                                        _loc7_.data = _loc5_;
                                                                        if(!_loc10_)
                                                                        {
                                                                           facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,_loc7_);
                                                                           if(_loc9_)
                                                                           {
                                                                              facade.removeMediator(EmergencySidePictureMediator.NAME);
                                                                           }
                                                                        }
                                                                     }
                                                                     var _loc8_:EmergencySidePictureMediator = new EmergencySidePictureMediator(_loc7_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        facade.registerMediator(_loc8_);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr0207);
                                                               }
                                                               §§goto(addr01be);
                                                            }
                                                            §§goto(addr01ba);
                                                         }
                                                         §§goto(addr01b7);
                                                      }
                                                      §§goto(addr01c0);
                                                   }
                                                   §§goto(addr01a3);
                                                }
                                                §§goto(addr01ba);
                                             }
                                             §§goto(addr01b7);
                                          }
                                          §§goto(addr0178);
                                       }
                                       §§goto(addr0181);
                                    }
                                    §§goto(addr01c0);
                                 }
                                 §§goto(addr01b4);
                              }
                              §§goto(addr0141);
                           }
                           §§goto(addr014d);
                        }
                        §§goto(addr01b7);
                     }
                     §§goto(addr0178);
                  }
                  §§goto(addr00e2);
               }
               §§goto(addr014d);
            }
         }
         §§goto(addr007a);
      }
   }
}

