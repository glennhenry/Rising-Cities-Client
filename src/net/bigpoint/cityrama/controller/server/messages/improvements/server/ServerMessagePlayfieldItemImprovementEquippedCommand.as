package net.bigpoint.cityrama.controller.server.messages.improvements.server
{
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemImprovementEquippedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldItemImprovementEquippedCommand()
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
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ImprovementProxy = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
         if(_loc5_ || Boolean(_loc2_))
         {
            _loc3_.addImprovementToBillboard(new ImprovementDTO(_loc2_.json.imp));
         }
      }
   }
}

