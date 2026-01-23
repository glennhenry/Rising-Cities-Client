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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(_loc5_ || Boolean(this))
         {
            _loc3_.modal = true;
            if(!_loc4_)
            {
               _loc3_.mediatorName = SchoolBookMediator.NAME;
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc3_.mediatorClass = SchoolBookMediator;
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     _loc3_.viewClass = SchoolBook;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr00a1:
                        _loc3_.data = _loc2_;
                        if(!_loc4_)
                        {
                           addr00ab:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00ab);
                  }
               }
            }
            addr00b6:
            return;
         }
         §§goto(addr00a1);
      }
   }
}

