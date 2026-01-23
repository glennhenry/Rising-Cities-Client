package net.bigpoint.cityrama.controller.applicationModes.build
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.NoPermissionsLeftMiniLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeBuildDeinitialize extends SimpleCommand
   {
      
      public function ApplicationModeBuildDeinitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:FieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
         var _loc3_:RestrictionProxy = RestrictionProxy(facade.retrieveProxy(RestrictionProxy.NAME));
         var _loc4_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         var _loc5_:StreetBuildProxy = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
         if(_loc5_ != null)
         {
            _loc5_.endBuildMode();
         }
         _loc3_.restrictionGridVisibility = false;
         _loc4_.overrideStreets = false;
         if(Boolean(_loc2_) && _loc2_.billboardObjectToAdd != null)
         {
            sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc2_.billboardObjectToAdd);
            if(_loc2_.billboardObjectToAdd is ShopFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
            }
            else if(_loc2_.billboardObjectToAdd is ResidentialFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
            }
         }
         if(Boolean(_loc2_) && _loc2_.planeObjectToAdd != null)
         {
            sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc2_.planeObjectToAdd);
         }
         facade.removeCommand(ApplicationNotificationConstants.FIELD_CLICK);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_DRAG_STOP);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_DRAG_START);
         facade.removeProxy(FieldBuildProxy.NAME);
         facade.sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
         facade.sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
         facade.sendNotification(VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE,false);
         facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES);
         facade.sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
         if(facade.hasMediator(NoPermissionsLeftMiniLayerMediator.NAME))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,NoPermissionsLeftMiniLayerMediator.NAME);
         }
      }
   }
}

