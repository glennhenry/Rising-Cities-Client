package net.bigpoint.cityrama.controller.infrastructure.heatmap
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import net.bigpoint.cityrama.view.mainMenu.ViewModeMenuMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ChangeHeatmapViewStateCommand extends SimpleCommand implements ICommand
   {
      
      private var _heatMapMediator:SecurityGradeHeatMapMediator;
      
      private var _viewModeMediator:ViewModeMenuMediator;
      
      private var _optionsMediator:OptionsMenuMediator;
      
      private var _basementProxy:BasementViewProxy;
      
      public function ChangeHeatmapViewStateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:String = param1.getName();
         this._heatMapMediator = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
         this._viewModeMediator = facade.retrieveMediator(ViewModeMenuMediator.NAME) as ViewModeMenuMediator;
         this._optionsMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         this._basementProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         switch(_loc2_)
         {
            case ApplicationNotificationConstants.HIDE_HEATMAP:
               this.hideHeatMap();
               break;
            case ApplicationNotificationConstants.SHOW_BLINDSPOT_HEATMAP:
               this.showBlindSpotHeatMap();
               break;
            case ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP:
               this.showHeatMap(param1.getBody() as String);
         }
      }
      
      private function showHeatMap(param1:String) : void
      {
         this._heatMapMediator.showHeatMap(param1);
         switch(param1)
         {
            case ServerTagConstants.FIRE_DEPARTMENT:
               this._viewModeMediator.component.fireViewButton.selected = true;
               this._optionsMediator.component.subMenueBasement.selected = true;
               break;
            case ServerTagConstants.POLICE_DEPARTMENT:
               this._viewModeMediator.component.policeViewButton.selected = true;
               this._optionsMediator.component.subMenueBasement.selected = true;
               break;
            case ServerTagConstants.HOSPITAL:
               this._viewModeMediator.component.hospitalViewButton.selected = true;
               this._optionsMediator.component.subMenueBasement.selected = true;
         }
      }
      
      private function showBlindSpotHeatMap() : void
      {
      }
      
      private function hideHeatMap() : void
      {
         if(this._heatMapMediator)
         {
            this._heatMapMediator.hide();
         }
         this._viewModeMediator.component.policeViewButton.selected = false;
         this._viewModeMediator.component.fireViewButton.selected = false;
         this._viewModeMediator.component.hospitalViewButton.selected = false;
         this._optionsMediator.component.subMenueBasement.selected = this._basementProxy.isBaseViewEnabled;
      }
   }
}

