package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingPhaseNewCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingPhaseNewCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:Object = null;
         var _loc8_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc6_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         for each(_loc7_ in _loc2_.json.ph)
         {
            _loc6_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc7_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
         }
         for each(_loc8_ in _loc6_)
         {
            _loc4_.billboardObjectVo.buildingDTO.activePhases.push(_loc8_);
         }
         _loc4_.billboardObjectVo.invalidate();
      }
   }
}

