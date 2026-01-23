package net.bigpoint.cityrama.controller.server.messages.improvements.server
{
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemImprovementUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldItemImprovementUpdateCommand()
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ImprovementProxy = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc3_.updateImprovement(new ImprovementDTO(_loc2_.json.imp));
         }
      }
   }
}

