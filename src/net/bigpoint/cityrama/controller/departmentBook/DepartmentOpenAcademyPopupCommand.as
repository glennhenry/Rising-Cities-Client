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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!_loc6_)
         {
            _loc3_.modal = true;
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               addr004b:
               _loc3_.mediatorName = SchoolBookMediator.NAME;
               if(_loc5_)
               {
                  _loc3_.mediatorClass = SchoolBookMediator;
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     addr006f:
                     _loc3_.viewClass = SchoolBook;
                  }
                  addr0082:
                  var _loc4_:Vector.<AcademyFieldObject> = _loc2_.getAcademyList();
                  §§push(Boolean(_loc4_));
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§pop();
                           if(_loc5_ || Boolean(param1))
                           {
                              addr00c5:
                              if(_loc4_.length > 0)
                              {
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    _loc3_.data = _loc4_[0];
                                    if(!_loc6_)
                                    {
                                       addr00f6:
                                       sendNotification(VirtualTaskNotificationInterest.ACADEMY_LAYER_OPENED);
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                                       }
                                    }
                                    §§goto(addr011a);
                                 }
                                 §§goto(addr00f6);
                              }
                           }
                           addr011a:
                           return;
                        }
                     }
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr006f);
            }
            §§goto(addr0082);
         }
         §§goto(addr004b);
      }
   }
}

