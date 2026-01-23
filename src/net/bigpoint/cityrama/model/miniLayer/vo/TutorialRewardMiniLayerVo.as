package net.bigpoint.cityrama.model.miniLayer.vo
{
   public class TutorialRewardMiniLayerVo
   {
      
      private var _dynaImageName_left:String;
      
      private var _dynaImageName_right:String;
      
      private var _label_left:String;
      
      private var _label_right:String;
      
      public function TutorialRewardMiniLayerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get dynaImageName_left() : String
      {
         return this._dynaImageName_left;
      }
      
      public function set dynaImageName_left(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._dynaImageName_left = param1;
         }
      }
      
      public function get dynaImageName_right() : String
      {
         return this._dynaImageName_right;
      }
      
      public function set dynaImageName_right(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._dynaImageName_right = param1;
         }
      }
      
      public function get label_left() : String
      {
         return this._label_left;
      }
      
      public function set label_left(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._label_left = param1;
         }
      }
      
      public function get label_right() : String
      {
         return this._label_right;
      }
      
      public function set label_right(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._label_right = param1;
         }
      }
   }
}

