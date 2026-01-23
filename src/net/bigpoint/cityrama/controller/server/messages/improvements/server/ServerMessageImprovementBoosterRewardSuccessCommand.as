package net.bigpoint.cityrama.controller.server.messages.improvements.server
{
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageImprovementBoosterRewardSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageImprovementBoosterRewardSuccessCommand()
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
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:Object = null;
         var _loc2_:ImprovementStoreProxy = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
         var _loc3_:MessageVo = MessageVo(param1.getBody());
         var _loc4_:Vector.<ConfigRewardDTO> = new Vector.<ConfigRewardDTO>();
         for each(_loc5_ in _loc3_.json.rs)
         {
            if(!_loc8_)
            {
               _loc4_.push(ConfigFactory.buildRewardDTO(_loc5_));
            }
         }
         if(!_loc8_)
         {
            _loc2_.setRewardData(_loc4_);
         }
      }
   }
}

