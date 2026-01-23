package net.bigpoint.cityrama.controller.schoolBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SchoolBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenSchoolBookCommand extends SimpleCommand
   {
      
      public function OpenSchoolBookCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.mediatorName = SchoolBookMediator.NAME;
         _loc3_.mediatorClass = SchoolBookMediator;
         _loc3_.viewClass = SchoolBook;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

