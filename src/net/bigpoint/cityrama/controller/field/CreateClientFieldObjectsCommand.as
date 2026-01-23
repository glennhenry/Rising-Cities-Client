package net.bigpoint.cityrama.controller.field
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CreateClientFieldObjectsCommand extends SimpleCommand
   {
      
      private var playfieldProxy:PlayfieldProxy;
      
      private var questProxy:QuestProxy;
      
      private var featureProxy:FeatureProxy;
      
      public function CreateClientFieldObjectsCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         this.playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this.questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         this.featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         switch(this.playfieldProxy.config.id)
         {
            case HorizionSettingsVo.CITY_PLAYFIELD_ID:
               this.addBuildingsForCity();
               break;
            case HorizionSettingsVo.COASTAL_PLAYFIELD_ID:
               this.addBuildingsForCoastal();
               break;
            case HorizionSettingsVo.SUBURBAN_PLAYFIELD_ID:
               this.addBuildingsForSuburban();
               break;
            case HorizionSettingsVo.MOUNTAIN_PLAYFIELD_ID:
               this.addBuildingsForMountain();
         }
      }
      
      private function addBuildingsForCity() : void
      {
         var _loc1_:BridgeFieldObjectVo = new BridgeFieldObjectVo();
         _loc1_.currentPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
         _loc1_.targetPlayfieldId = HorizionSettingsVo.COASTAL_PLAYFIELD_ID;
         _loc1_.matrixCoordinates = new Rectangle(26,44,1,1);
         _loc1_.questIdentifier = "1960";
         _loc1_.enabledFeatureType = ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH;
         _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
         var _loc2_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         _loc2_.currentPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
         _loc2_.targetPlayfieldId = HorizionSettingsVo.SUBURBAN_PLAYFIELD_ID;
         _loc2_.matrixCoordinates = new Rectangle(58,23,1,1);
         _loc2_.questIdentifier = "2121";
         _loc2_.enabledFeatureType = ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH;
         _loc2_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc2_);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc2_);
         var _loc3_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         _loc3_.currentPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
         _loc3_.targetPlayfieldId = HorizionSettingsVo.MOUNTAIN_PLAYFIELD_ID;
         _loc3_.matrixCoordinates = new Rectangle(28,2,1,1);
         _loc3_.questIdentifier = "2128";
         _loc3_.enabledFeatureType = ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH;
         _loc3_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc3_);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc3_);
      }
      
      private function addBuildingsForCoastal() : void
      {
         var _loc1_:BridgeFieldObjectVo = new BridgeFieldObjectVo();
         _loc1_.currentPlayfieldId = HorizionSettingsVo.COASTAL_PLAYFIELD_ID;
         _loc1_.targetPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
         _loc1_.matrixCoordinates = new Rectangle(4,1,1,1);
         _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
      }
      
      private function addBuildingsForSuburban() : void
      {
         var _loc1_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         _loc1_.currentPlayfieldId = HorizionSettingsVo.SUBURBAN_PLAYFIELD_ID;
         _loc1_.targetPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
         _loc1_.matrixCoordinates = new Rectangle(0,18,1,1);
         _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
      }
      
      private function addBuildingsForMountain() : void
      {
         var _loc1_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         _loc1_.currentPlayfieldId = HorizionSettingsVo.MOUNTAIN_PLAYFIELD_ID;
         _loc1_.targetPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
         _loc1_.matrixCoordinates = new Rectangle(36,31,1,1);
         _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
      }
   }
}

