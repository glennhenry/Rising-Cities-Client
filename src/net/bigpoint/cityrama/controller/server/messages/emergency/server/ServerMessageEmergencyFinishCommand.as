package net.bigpoint.cityrama.controller.server.messages.emergency.server
{
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEmergencyFinishCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageEmergencyFinishCommand()
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
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc7_:PhaseDTO = null;
         var _loc8_:Vector.<PhaseDTO> = null;
         var _loc9_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc5_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         if(!(_loc12_ && Boolean(_loc3_)))
         {
            if(_loc4_)
            {
               if(_loc13_)
               {
                  if(_loc2_.json.p)
                  {
                     addr008d:
                     _loc7_ = ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc2_.json.p,_loc4_.billboardObjectVo.configPlayfieldItemVo);
                     _loc8_ = new Vector.<PhaseDTO>(0);
                     _loc8_.push(_loc7_);
                     for each(_loc9_ in _loc4_.billboardObjectVo.buildingDTO.activePhases)
                     {
                        if(_loc9_.phaseId != _loc7_.phaseId)
                        {
                           if(_loc13_ || Boolean(this))
                           {
                              _loc8_.push(_loc9_);
                           }
                        }
                     }
                     if(_loc13_ || Boolean(_loc2_))
                     {
                        _loc4_.billboardObjectVo.buildingDTO.activePhases = _loc8_;
                     }
                  }
                  §§push(_loc4_.billboardObjectVo);
                  if(_loc13_ || Boolean(_loc2_))
                  {
                     §§pop().buildingDTO.emergencyDTO = null;
                     if(!_loc12_)
                     {
                        addr0159:
                        _loc4_.billboardObjectVo.userInteractionLocked = false;
                        if(_loc13_ || Boolean(this))
                        {
                           _loc4_.invalidateAnimationSlotManager();
                           if(!(_loc12_ && Boolean(param1)))
                           {
                              addr018c:
                              _loc4_.invalidateIconStateManager();
                              if(_loc13_)
                              {
                                 addr0198:
                                 _loc5_.removeEmergencyInfo(_loc4_.billboardObjectVo.buildingDTO.id);
                              }
                           }
                           §§goto(addr01a7);
                        }
                        §§goto(addr018c);
                     }
                     §§goto(addr0198);
                  }
                  §§goto(addr0159);
               }
               §§goto(addr008d);
            }
            addr01a7:
            var _loc6_:EmergencyProxy = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
            _loc6_.currentEmergency = null;
            return;
         }
         §§goto(addr008d);
      }
   }
}

