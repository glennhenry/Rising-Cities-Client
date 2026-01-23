package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.SwitchPlayfieldQueryMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.cityrama.view.quest.ui.QuestTabbedBookMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldSwitchFieldObjectClickedCommand extends SimpleCommand
   {
      
      public function PlayfieldSwitchFieldObjectClickedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PopupSettingsVo = null;
         var _loc5_:QuestProxy = null;
         var _loc6_:uint = 0;
         var _loc7_:QuestGUIProxy = null;
         var _loc8_:Object = null;
         var _loc2_:PlayfieldSwitchFieldObject = param1.getBody() as PlayfieldSwitchFieldObject;
         if(_loc2_ == null || _loc2_.playfieldSwitchFieldObjectVo == null)
         {
            return;
         }
         var _loc4_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(_loc2_.playfieldSwitchFieldObjectVo.enabledFeatureType == "" || _loc2_.playfieldSwitchFieldObjectVo.enabledFeatureType != "" && _loc4_.isFeatureEnabled(_loc2_.playfieldSwitchFieldObjectVo.enabledFeatureType))
         {
            _loc3_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc3_.modal = true;
            _loc3_.viewClass = QueryMiniLayer;
            _loc3_.mediatorClass = SwitchPlayfieldQueryMiniLayerMediator;
            _loc3_.mediatorName = SwitchPlayfieldQueryMiniLayerMediator.NAME;
            _loc3_.data = _loc2_.playfieldSwitchFieldObjectVo.targetPlayfieldId;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         }
         else if(_loc2_.playfieldSwitchFieldObjectVo.questIdentifier != "")
         {
            _loc5_ = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
            _loc6_ = _loc5_.getActiveQuestIdByLocaleIdentifier(_loc2_.playfieldSwitchFieldObjectVo.questIdentifier);
            if(_loc6_ != 0)
            {
               _loc7_ = facade.retrieveProxy(QuestGUIProxy.NAME) as QuestGUIProxy;
               _loc8_ = {};
               _loc8_.quest = _loc7_.getQuestDetailViewVo(_loc6_);
               _loc8_.index = QuestTabProxy.QUEST_DETAIL_TAB_INDEX;
               _loc3_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               _loc3_.modal = true;
               _loc3_.viewClass = QuestTabbedPopup;
               _loc3_.mediatorClass = QuestTabbedBookMediator;
               _loc3_.mediatorName = QuestTabbedBookMediator.NAME;
               _loc3_.data = _loc8_;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
               facade.sendNotification(ApplicationNotificationConstants.QUEST_LAYER_OPENED);
            }
         }
      }
   }
}

