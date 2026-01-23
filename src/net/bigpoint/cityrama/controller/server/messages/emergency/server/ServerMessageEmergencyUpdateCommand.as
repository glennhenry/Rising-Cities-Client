package net.bigpoint.cityrama.controller.server.messages.emergency.server
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.emergencyTV.EmergencyTVMediator;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEmergencyUpdateCommand extends SimpleCommand implements ICommand
   {
      
      private var _building:BillboardObject;
      
      private var _tvData:EmergencyTVVo;
      
      private var _tvMediator:EmergencyTVMediator;
      
      private var _emergencyLayerProxy:EmergencyLayerProxy;
      
      public function ServerMessageEmergencyUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc5_:EmergencyProxy = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         this._emergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         this._building = _loc3_.getBillboardById(_loc2_.json.bid);
         if(this._building)
         {
            var _loc6_:EmergencyDTO = ConfigFactory.buildEmergencyDTO(_loc2_.json.e);
            this._building.billboardObjectVo.buildingDTO.emergencyDTO = null;
         }
      }
      
      private function startEmergencyProgress() : void
      {
         this._building.billboardObjectVo.emergencyInProgress = true;
         this._building.billboardObjectVo.addEventListener(BillboardObjectVo.EMERGENCY_PROGRESS_CHANGED,this.onProgressChanged);
      }
      
      private function onProgressChanged(param1:Event) : void
      {
         this._building.billboardObjectVo.removeEventListener(BillboardObjectVo.EMERGENCY_PROGRESS_CHANGED,this.onProgressChanged);
         this._building.invalidateAnimationSlotManager();
         this._building.invalidateIconStateManager();
         if(Boolean(this._tvData) && Boolean(this._tvMediator))
         {
            this._tvMediator.setTVData(this._tvData);
         }
      }
   }
}

