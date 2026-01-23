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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:SchoolBookMediator = facade.retrieveMediator(SchoolBookMediator.NAME) as SchoolBookMediator;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(_loc2_)
         {
            _loc2_.setData(_loc2_.academyObject);
         }
         _loc3_.getAcademyList()[0].invalidateAnimationSlotManager();
         _loc3_.getAcademyList()[0].invalidateIconStateManager();
      }
   }
}

