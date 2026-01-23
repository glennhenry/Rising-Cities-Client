package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigTagDTO
   {
      
      private var _tagId:Number;
      
      private var _tagName:String;
      
      public function ConfigTagDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               addr0041:
               this._tagId = param1.id;
               if(!_loc3_)
               {
                  this._tagName = param1.tn;
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      public function get tagName() : String
      {
         return this._tagName;
      }
      
      public function get tagId() : Number
      {
         return this._tagId;
      }
   }
}

