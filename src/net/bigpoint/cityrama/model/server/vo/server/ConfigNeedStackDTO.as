package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNeedStackDTO
   {
      
      private var _id:Number;
      
      private var _maxStack:Number;
      
      private var _configOutout:ConfigOutputDTO;
      
      public function ConfigNeedStackDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               addr002d:
               this._id = param1.id;
               if(!_loc3_)
               {
                  this._maxStack = param1.s;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0053:
                     this._configOutout = new ConfigOutputDTO(param1.o);
                  }
                  return;
               }
            }
            §§goto(addr0053);
         }
         §§goto(addr002d);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get maxStack() : Number
      {
         return this._maxStack;
      }
      
      public function get configOutout() : ConfigOutputDTO
      {
         return this._configOutout;
      }
   }
}

