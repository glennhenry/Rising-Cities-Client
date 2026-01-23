package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingRandomDropCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingRandomDropCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc8_:EventProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ConfigOutputDTO = new ConfigOutputDTO(_loc2_.json.co);
         var _loc4_:GameConfigProxy = super.facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:PlayfieldObjectsProxy = super.facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc6_:BillboardObject = _loc5_.getBillboardById(_loc2_.json.bid);
         var _loc7_:ConfigPhaseDTO = new ConfigPhaseDTO({"t":ServerPhaseTypes.CLIENTSIDE_VIRTUAL});
         if(_loc10_)
         {
            _loc3_.goodConfig = _loc4_.goods[_loc3_.configId];
            if(_loc10_)
            {
               _loc7_.listEntryOutputs = new <ConfigOutputDTO>[_loc3_];
               if(_loc10_ || Boolean(_loc3_))
               {
                  §§push(_loc6_.billboardObjectVo);
                  if(!(_loc9_ && Boolean(this)))
                  {
                     §§pop().informationFloaterPhase = _loc7_;
                     if(!_loc9_)
                     {
                        addr00f7:
                        addr00f3:
                        §§push(_loc6_.billboardObjectVo is IEventDrop);
                        if(!_loc9_)
                        {
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 addr010b:
                                 _loc8_ = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    (_loc6_.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc8_.currentRunningEventQuestLocaleId;
                                 }
                                 addr013c:
                                 _loc6_.invalidateInformationFloaterManager();
                                 if(!(_loc9_ && Boolean(_loc3_)))
                                 {
                                    addr0167:
                                    addr015e:
                                    if(OptionsGlobalVariables.getInstance().showDropIcons)
                                    {
                                       if(_loc10_ || Boolean(_loc3_))
                                       {
                                          addr0179:
                                          facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                             "tO":_loc6_,
                                             "cP":_loc7_
                                          });
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr0167);
                     }
                     §§goto(addr010b);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr0179);
            }
            §§goto(addr00f3);
         }
         §§goto(addr015e);
      }
   }
}

