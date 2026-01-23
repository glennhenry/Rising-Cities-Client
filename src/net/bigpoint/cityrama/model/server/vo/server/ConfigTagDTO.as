package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigTagDTO
   {
      
      private var _tagId:Number;
      
      private var _tagName:String;
      
      public function ConfigTagDTO(param1:Object)
      {
         super();
         this._tagId = param1.id;
         this._tagName = param1.tn;
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

