package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldDecorationMoveSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldDecorationMoveSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:IEmergencyInfrastructure = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:DecorationDTO = new DecorationDTO(_loc2_.json.de);
         var _loc6_:BillboardObject = _loc3_.getBillboardById(_loc5_.id);
         DecorationFieldObjectVo(_loc6_.billboardObjectVo).decorationVo.dto = _loc5_;
         _loc3_.reAddGameObjVoToMatrix(_loc6_.billboardObjectVo);
         var _loc7_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc6_ is IEmergencyInfrastructure)
         {
            _loc8_ = _loc6_ as IEmergencyInfrastructure;
            _loc7_.addObject(_loc8_.emergencyFieldObjectVo);
         }
      }
   }
}

