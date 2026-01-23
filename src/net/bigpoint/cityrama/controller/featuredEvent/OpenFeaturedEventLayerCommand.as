package net.bigpoint.cityrama.controller.featuredEvent
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventLayerMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFeaturedEventLayerCommand extends SimpleCommand
   {
      
      public function OpenFeaturedEventLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:int = 0;
         if(param1.getBody() != null)
         {
            if(param1.getBody() is int)
            {
               _loc2_ = param1.getBody() as int;
            }
         }
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = FeaturedEventLayer;
         _loc3_.mediatorClass = FeaturedEventLayerMediator;
         _loc3_.mediatorName = FeaturedEventLayerMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

