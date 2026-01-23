package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OnResidentSelected extends SimpleCommand implements ICommand
   {
      
      public function OnResidentSelected()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc4_:* = NaN;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:CitizensProxy = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc2_:String = param1.getBody().type;
         var _loc3_:ResidentialFieldObject = param1.getBody().resident as ResidentialFieldObject;
         var _loc5_:ConfigOutputDTO = null;
         if(_loc15_ || Boolean(_loc2_))
         {
            if(_loc3_ != null)
            {
               if(!_loc16_)
               {
                  addr006c:
                  _loc3_.billboardObjectVo.userInteractionLocked = true;
               }
               for each(_loc6_ in _loc3_.billboardObjectVo.configPlayfieldItemVo.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
               {
                  for each(_loc9_ in _loc6_.listEntryOutputs)
                  {
                     if(_loc9_.resourceConfig.type == _loc2_)
                     {
                        if(!_loc16_)
                        {
                           §§push(_loc6_.phaseId);
                           if(!(_loc16_ && Boolean(this)))
                           {
                              §§push(§§pop());
                           }
                           _loc4_ = §§pop();
                        }
                        _loc5_ = _loc9_;
                        break;
                     }
                  }
               }
               if(!(_loc16_ && Boolean(_loc2_)))
               {
                  _loc7_ = _loc3_.billboardObjectVo.inaugurationPhase;
                  if(_loc15_)
                  {
                     _loc3_.residentialFieldObjectVo.currentResidents = _loc2_;
                     if(_loc15_)
                     {
                        if(_loc5_ != null)
                        {
                           if(_loc15_)
                           {
                              _loc10_ = _loc7_.clone();
                              _loc10_.listEntryOutputs.push(_loc5_);
                              _loc7_ = _loc10_;
                              addr015c:
                              _loc3_.billboardObjectVo.informationFloaterPhase = _loc7_;
                              if(_loc15_ || Boolean(_loc3_))
                              {
                                 _loc3_.invalidateInformationFloaterManager();
                                 if(!_loc16_)
                                 {
                                    if(OptionsGlobalVariables.getInstance().showDropIcons)
                                    {
                                       if(_loc15_)
                                       {
                                          addr0190:
                                          if(_loc7_ != null)
                                          {
                                             if(_loc15_ || Boolean(_loc2_))
                                             {
                                                addr01a5:
                                                facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                                   "tO":_loc3_,
                                                   "cP":_loc7_
                                                });
                                             }
                                          }
                                       }
                                    }
                                    addr01ba:
                                    _loc8_ = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
                                    _loc8_.scanForPfoTags();
                                    if(_loc15_ || Boolean(param1))
                                    {
                                       _loc8_.resetSpawnedList();
                                       if(_loc15_ || Boolean(this))
                                       {
                                          addr01f4:
                                          sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_INAUGURATE,{
                                             "vo":_loc3_.billboardObjectVo,
                                             "pop":_loc4_
                                          });
                                          if(!_loc16_)
                                          {
                                             §§goto(addr0220);
                                          }
                                          §§goto(addr0233);
                                       }
                                       addr0220:
                                       sendNotification(ApplicationNotificationConstants.SPAWN_INAUGURATE_CITIZEN,_loc3_.billboardObjectVo);
                                       if(_loc15_)
                                       {
                                          addr0233:
                                          sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,_loc3_.billboardObjectVo);
                                       }
                                       §§goto(addr0257);
                                    }
                                    §§goto(addr01f4);
                                 }
                                 §§goto(addr0190);
                              }
                              §§goto(addr01a5);
                           }
                           §§goto(addr01ba);
                        }
                        §§goto(addr015c);
                     }
                     §§goto(addr01a5);
                  }
                  §§goto(addr01ba);
               }
               addr0257:
               return;
            }
            throw Error(new Error("no residentialfieldObj!!"));
         }
         §§goto(addr006c);
      }
   }
}

