package net.bigpoint.cityrama.controller.departmentBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SchoolBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DepartmentOpenAcademyPopupCommand extends SimpleCommand
   {
      
      public function DepartmentOpenAcademyPopupCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.mediatorName = SchoolBookMediator.NAME;
         _loc3_.mediatorClass = SchoolBookMediator;
         _loc3_.viewClass = SchoolBook;
         var _loc4_:Vector.<AcademyFieldObject> = _loc2_.getAcademyList();
         if((Boolean(_loc4_)) && _loc4_.length > 0)
         {
            _loc3_.data = _loc4_[0];
            sendNotification(VirtualTaskNotificationInterest.ACADEMY_LAYER_OPENED);
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         }
      }
   }
}

