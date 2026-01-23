package net.bigpoint.cityrama.controller.worldMap
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.worldmap.WorldMapLayer;
   import net.bigpoint.cityrama.view.worldmap.WorldMapLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenWorldMapCommand extends SimpleCommand
   {
      
      public function OpenWorldMapCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Boolean = false;
         if(param1.getBody() is Boolean)
         {
            _loc2_ = param1.getBody() as Boolean;
         }
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.mediatorName = WorldMapLayerMediator.NAME;
         _loc3_.mediatorClass = WorldMapLayerMediator;
         _loc3_.viewClass = WorldMapLayer;
         _loc3_.modal = true;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI,false);
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI_MAIN_MENU,true);
         }
      }
   }
}

