package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBoulderDestructionPhaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBoulderDestructionPhaseUpdateCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:Object = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BoulderFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as BoulderFieldObject;
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         if(!(_loc10_ && Boolean(this)))
         {
            _loc4_.billboardObjectVo.userInteractionLocked = true;
         }
         for each(_loc6_ in _loc2_.json.ph)
         {
            if(_loc9_ || Boolean(this))
            {
               _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc6_,_loc4_.boulderObjectVo.configPlayfieldItemVo));
            }
         }
         if(_loc9_ || Boolean(_loc3_))
         {
            §§push(_loc4_.boulderObjectVo);
            if(_loc9_)
            {
               §§pop().activePhases = _loc5_;
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  _loc4_.invalidateBoulderDemolitionAssetManager();
                  if(_loc9_)
                  {
                     addr0112:
                     _loc4_.boulderObjectVo.invalidate();
                     addr010d:
                  }
                  §§goto(addr0116);
               }
               §§goto(addr010d);
            }
            §§goto(addr0112);
         }
         addr0116:
      }
   }
}

