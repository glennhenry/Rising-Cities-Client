package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementReplacementMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementReplacementMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenReplaceImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenReplaceImprovementMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:ImprovementMiniLayerVo = null;
         var _loc8_:ImprovementReplacementMiniLayerVo = null;
         var _loc9_:PopupSettingsVo = null;
         var _loc2_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         var _loc3_:Number = Number(param1.getBody().slotId);
         var _loc4_:Number = Number(param1.getBody().buildingId);
         var _loc5_:ImprovementVo = param1.getBody().impro;
         var _loc6_:ImprovementVo = param1.getBody().newImpro;
         if(_loc3_ && _loc4_ && _loc5_ && Boolean(_loc6_))
         {
            _loc7_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
            _loc8_ = _loc2_.getImprovementReplacementMiniLayerVo(_loc7_,_loc6_,ImprovementReplacementMiniLayerVo.STATE_REPLACE);
            if(_loc8_)
            {
               _loc9_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc9_.modal = true;
               _loc9_.viewClass = ImprovementReplacementMiniLayer;
               _loc9_.mediatorClass = ImprovementReplacementMiniLayerMediator;
               _loc9_.mediatorName = ImprovementReplacementMiniLayerMediator.NAME;
               _loc9_.data = _loc8_;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc9_);
            }
         }
      }
   }
}

