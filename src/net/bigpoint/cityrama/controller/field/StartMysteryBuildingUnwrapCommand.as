package net.bigpoint.cityrama.controller.field
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class StartMysteryBuildingUnwrapCommand extends SimpleCommand
   {
      
      public function StartMysteryBuildingUnwrapCommand()
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
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:Point = null;
         var _loc6_:PhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:SoundProxy = null;
         var _loc2_:MysteryBuildingFieldObject = MysteryBuildingFieldObject(param1.getBody());
         var _loc3_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc4_:OptionsMenuMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         if(!(_loc10_ && Boolean(_loc2_)))
         {
            if(_loc3_.isBaseViewEnabled)
            {
               if(_loc9_ || Boolean(_loc2_))
               {
                  _loc3_.isBaseViewEnabled = false;
                  if(_loc9_)
                  {
                     _loc3_.setByUserAxn = false;
                     if(_loc9_)
                     {
                        §§goto(addr009a);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00ad);
               }
               addr009a:
               _loc3_.changeBaseViewForAll();
               if(!(_loc10_ && Boolean(this)))
               {
                  addr00ad:
                  if(_loc4_)
                  {
                     if(_loc9_ || Boolean(param1))
                     {
                        addr00c1:
                        _loc4_.component.subMenueBasement.selected = _loc3_.isBaseViewEnabled;
                        if(_loc9_)
                        {
                           §§goto(addr00d5);
                        }
                        §§goto(addr00da);
                     }
                  }
               }
               §§goto(addr00d5);
            }
            addr00d5:
            if(_loc2_)
            {
               _loc5_ = new Point(_loc2_.billboardObjectVo.matrix3dCoordinates.x,_loc2_.billboardObjectVo.matrix3dCoordinates.y);
               addr00da:
               if(_loc9_)
               {
                  sendNotification(ApplicationNotificationConstants.FIELD_PANTO,_loc5_);
                  if(_loc9_)
                  {
                     sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,false);
                  }
               }
               _loc6_ = _loc2_.mysteryBuildingObjectVo.currentMysteryConstructionPhase;
               if(_loc6_)
               {
                  if(!_loc10_)
                  {
                     _loc7_ = _loc6_.config.clone();
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        _loc2_.mysteryBuildingObjectVo.informationFloaterPhase = _loc7_;
                        if(!(_loc10_ && Boolean(_loc2_)))
                        {
                           _loc2_.invalidateInformationFloaterManager();
                           if(_loc9_ || Boolean(param1))
                           {
                              §§goto(addr017e);
                           }
                        }
                        §§goto(addr0191);
                     }
                     addr017e:
                     if(OptionsGlobalVariables.getInstance().showDropIcons)
                     {
                        if(!_loc10_)
                        {
                           addr0191:
                           if(_loc6_ != null)
                           {
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 addr01a6:
                                 facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                    "tO":_loc2_,
                                    "cP":_loc7_
                                 });
                              }
                           }
                           §§goto(addr01bb);
                        }
                        §§goto(addr01a6);
                     }
                     addr01bb:
                     if(OptionsGlobalVariables.getInstance().highQuality)
                     {
                        if(_loc9_)
                        {
                           _loc2_.startUnwrap();
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              addr01ee:
                              _loc8_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                              _loc8_.playMysteryUnfold();
                           }
                           §§goto(addr0217);
                        }
                        §§goto(addr01ee);
                     }
                     else
                     {
                        sendNotification(ApplicationNotificationConstants.END_MYSTERYBUILDING_UNWRAP,_loc2_);
                     }
                  }
                  §§goto(addr0217);
               }
               §§goto(addr01bb);
            }
            addr0217:
            return;
         }
         §§goto(addr009a);
      }
   }
}

