package as3isolib.graphics
{
   import flash.display.Graphics;
   
   public class SolidColorFill implements IFill
   {
      
      private static var _IDCount:uint = 0;
      
      public const UID:uint = _IDCount++;
      
      protected var setID:String;
      
      public var color:uint;
      
      public var alpha:Number;
      
      public function SolidColorFill(param1:uint, param2:Number)
      {
         super();
         this.color = param1;
         this.alpha = param2;
      }
      
      public function get id() : String
      {
         return this.setID == null || this.setID == "" ? "SolidColorFill" + this.UID.toString() : this.setID;
      }
      
      public function set id(param1:String) : void
      {
         this.setID = param1;
      }
      
      public function begin(param1:Graphics) : void
      {
         param1.beginFill(this.color,this.alpha);
      }
      
      public function end(param1:Graphics) : void
      {
         param1.endFill();
      }
      
      public function clone() : IFill
      {
         return new SolidColorFill(this.color,this.alpha);
      }
   }
}

