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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:Object = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BoulderFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as BoulderFieldObject;
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         _loc4_.billboardObjectVo.userInteractionLocked = true;
         for each(_loc6_ in _loc2_.json.ph)
         {
            _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc6_,_loc4_.boulderObjectVo.configPlayfieldItemVo));
         }
         _loc4_.boulderObjectVo.activePhases = _loc5_;
         _loc4_.invalidateBoulderDemolitionAssetManager();
         _loc4_.boulderObjectVo.invalidate();
      }
   }
}

