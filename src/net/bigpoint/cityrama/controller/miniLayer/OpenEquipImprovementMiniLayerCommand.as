package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementEquipMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementEquipMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEquipImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEquipImprovementMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:ImprovementMiniLayerVo = null;
         var _loc7_:PopupSettingsVo = null;
         var _loc2_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         var _loc3_:Number = Number(param1.getBody().slotId);
         var _loc4_:Number = Number(param1.getBody().buildingId);
         var _loc5_:ImprovementVo = param1.getBody().impro;
         if(Boolean(_loc3_) && Boolean(_loc4_) && Boolean(_loc5_))
         {
            _loc6_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
            if(_loc6_)
            {
               _loc7_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc7_.modal = true;
               _loc7_.viewClass = ImprovementEquipMiniLayer;
               _loc7_.mediatorClass = ImprovementEquipMiniLayerMediator;
               _loc7_.mediatorName = ImprovementEquipMiniLayerMediator.NAME;
               _loc7_.data = _loc6_;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc7_);
            }
         }
      }
   }
}

