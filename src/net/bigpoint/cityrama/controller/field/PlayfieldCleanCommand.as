package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.cityrama.view.field.ground.PlaneMediator;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldCleanCommand extends SimpleCommand implements ICommand
   {
      
      public function PlayfieldCleanCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         sendNotification(ApplicationNotificationConstants.START_PLAYFIELD_LOADING_ANIMATION,{
            "gfxId":_loc2_.playfieldDTO.config.gfxId,
            "initial":false
         });
         var _loc3_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc4_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc5_:NeedMatrixProxy = NeedMatrixProxy(facade.retrieveProxy(NeedMatrixProxy.NAME));
         var _loc6_:SecurityMatrixProxy = SecurityMatrixProxy(facade.retrieveProxy(SecurityMatrixProxy.NAME));
         var _loc7_:PlaneProxy = PlaneProxy(facade.retrieveProxy(PlaneProxy.NAME));
         var _loc8_:PlayfieldExpansionsProxy = PlayfieldExpansionsProxy(facade.retrieveProxy(PlayfieldExpansionsProxy.NAME));
         var _loc9_:InventoryProxy = InventoryProxy(facade.retrieveProxy(InventoryProxy.NAME));
         var _loc10_:BasementViewProxy = BasementViewProxy(facade.retrieveProxy(BasementViewProxy.NAME));
         var _loc11_:FieldMediator = FieldMediator(facade.retrieveMediator(FieldMediator.NAME));
         var _loc12_:PlaneMediator = PlaneMediator(facade.retrieveMediator(PlaneMediator.NAME));
         var _loc13_:OptionsMenuMediator = OptionsMenuMediator(facade.retrieveMediator(OptionsMenuMediator.NAME));
         _loc3_.stopRenderTimer = true;
         sendNotification(ApplicationNotificationConstants.PAUSE_ALL_WALKERS);
         sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         facade.removeProxy(PathWalkProxy.NAME);
         _loc4_.resetModel();
         _loc7_.resetModel();
         _loc5_.reset();
         _loc6_.resetMatrix();
         _loc8_.invalidateExpansions();
         _loc11_.resetGroups();
         _loc12_.resetGroups();
         _loc10_.isBaseViewEnabled = false;
         if(_loc13_)
         {
            _loc13_.component.subMenueBasement.selected = false;
         }
         sendNotification(ApplicationNotificationConstants.FIELD_REDRAW);
      }
   }
}

