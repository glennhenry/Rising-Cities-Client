package net.bigpoint.cityrama.controller.field
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class StartMysteryBuildingUnwrapCommand extends SimpleCommand
   {
      
      public function StartMysteryBuildingUnwrapCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Point = null;
         var _loc6_:PhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:SoundProxy = null;
         var _loc2_:MysteryBuildingFieldObject = MysteryBuildingFieldObject(param1.getBody());
         var _loc3_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc4_:OptionsMenuMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         if(_loc3_.isBaseViewEnabled)
         {
            _loc3_.isBaseViewEnabled = false;
            _loc3_.setByUserAxn = false;
            _loc3_.changeBaseViewForAll();
            if(_loc4_)
            {
               _loc4_.component.subMenueBasement.selected = _loc3_.isBaseViewEnabled;
            }
         }
         if(_loc2_)
         {
            _loc5_ = new Point(_loc2_.billboardObjectVo.matrix3dCoordinates.x,_loc2_.billboardObjectVo.matrix3dCoordinates.y);
            sendNotification(ApplicationNotificationConstants.FIELD_PANTO,_loc5_);
            sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,false);
            _loc6_ = _loc2_.mysteryBuildingObjectVo.currentMysteryConstructionPhase;
            if(_loc6_)
            {
               _loc7_ = _loc6_.config.clone();
               _loc2_.mysteryBuildingObjectVo.informationFloaterPhase = _loc7_;
               _loc2_.invalidateInformationFloaterManager();
               if(OptionsGlobalVariables.getInstance().showDropIcons)
               {
                  if(_loc6_ != null)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                        "tO":_loc2_,
                        "cP":_loc7_
                     });
                  }
               }
            }
            if(OptionsGlobalVariables.getInstance().highQuality)
            {
               _loc2_.startUnwrap();
               _loc8_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               _loc8_.playMysteryUnfold();
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.END_MYSTERYBUILDING_UNWRAP,_loc2_);
            }
         }
      }
   }
}

