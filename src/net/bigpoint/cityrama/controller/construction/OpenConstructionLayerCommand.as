package net.bigpoint.cityrama.controller.construction
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerDataProxy;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerMediator;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.constructionLayer.ConstructionLayer;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenConstructionLayerCommand extends SimpleCommand
   {
      
      public function OpenConstructionLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(_loc2_ == null || _loc2_.billboardObjectVo == null || _loc2_.billboardObjectVo.configPlayfieldItemVo == null)
         {
            return;
         }
         var _loc3_:Boolean = _loc2_.billboardObjectVo.configPlayfieldItemVo.isUpgrade || !_loc2_.billboardObjectVo.isUnderConstruction();
         var _loc4_:ConstructionLayerDataProxy = facade.retrieveProxy(ConstructionLayerDataProxy.NAME) as ConstructionLayerDataProxy;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:ConstructionLayerVo = _loc4_.CreateConstructionLayerVo(_loc2_,_loc3_);
         var _loc6_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc6_.modal = true;
         _loc6_.mediatorName = ConstructionLayerMediator.NAME;
         _loc6_.mediatorClass = ConstructionLayerMediator;
         _loc6_.viewClass = ConstructionLayer;
         _loc6_.data = _loc5_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
      }
   }
}

