package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.schoolBook.SchoolBookMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEducationFinishedCommand extends SimpleCommand
   {
      
      public function ServerMessageEducationFinishedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:SchoolBookMediator = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.setData(_loc2_.academyObject);
                  if(!_loc4_)
                  {
                     addr007c:
                     _loc3_.getAcademyList()[0].invalidateAnimationSlotManager();
                     if(!_loc4_)
                     {
                        addr0091:
                        _loc3_.getAcademyList()[0].invalidateIconStateManager();
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0091);
            }
            §§goto(addr007c);
         }
         addr00a0:
      }
   }
}

