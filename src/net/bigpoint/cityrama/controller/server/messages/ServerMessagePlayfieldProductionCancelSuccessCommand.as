package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldProductionCancelSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldProductionCancelSuccessCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:PhaseDTO = null;
         var _loc6_:Vector.<PhaseDTO> = null;
         var _loc7_:* = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProductionFieldObject = ProductionFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         loop0:
         for each(_loc5_ in _loc4_.billboardObjectVo.activePhases)
         {
            if(_loc5_.config.phaseType != ServerPhaseTypes.PRODUCTION)
            {
               continue;
            }
            _loc6_ = new Vector.<PhaseDTO>();
            if(_loc11_ || Boolean(_loc2_))
            {
               §§push(0);
               if(!(_loc10_ && Boolean(this)))
               {
                  _loc7_ = §§pop();
                  if(_loc11_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc7_);
                        addr0126:
                        while(true)
                        {
                           if(§§pop() >= _loc4_.billboardObjectVo.activePhases.length)
                           {
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           if(_loc4_.billboardObjectVo.activePhases[_loc7_].config.phaseType != _loc5_.config.phaseType)
                           {
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 while(true)
                                 {
                                    _loc6_.push(_loc4_.billboardObjectVo.activePhases[_loc7_]);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr00fc:
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        addr0141:
                        _loc4_.billboardObjectVo.activePhases = _loc6_;
                        continue loop0;
                     }
                     addr0124:
                  }
                  while(true)
                  {
                     _loc7_++;
                     if(!(_loc11_ || Boolean(this)))
                     {
                        break;
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr0141);
               }
               §§goto(addr0126);
            }
            §§goto(addr00fc);
         }
         if(!_loc10_)
         {
            _loc4_.productionFieldObjectVo.stopProductionTime();
            if(!_loc10_)
            {
               addr0176:
               _loc4_.invalidateProductionSlotManager();
               if(_loc11_ || Boolean(_loc3_))
               {
                  sendNotification(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
               }
            }
            return;
         }
         §§goto(addr0176);
      }
   }
}

