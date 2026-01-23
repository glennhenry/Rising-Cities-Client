package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldDecorationMoveFailed extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldDecorationMoveFailed()
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:String = _loc2_.json.em as String;
         if(_loc4_)
         {
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(§§findproperty(RamaCityError));
               §§push("DecorationObject move failed");
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_.json.em);
               }
               throw new §§pop().RamaCityError(§§pop());
            }
         }
      }
   }
}

